require_relative 'code'

module Rive

  # here we transform an AST into another AST.
  # we don't use Marshalling.

  class Transformer

    attr_accessor :code

    def initialize
      @ind=-2
      @verbose=true
      @verbose=false
    end

    def transform ast
      ast.accept(self)
    end

    alias :visit :transform

    def new_tmp
      $tmp_id||=0
      tok=Token.create_id "$"+$tmp_id.to_s
      $tmp_id+=1
      Ident.new(tok)
    end

    def new_ident
      new_tmp
    end

    def reset_new_ident
      @tmp_id=0
    end

    def visitToken tok, args=nil
      Token.new [tok.kind,tok.val,tok.pos]
    end

    def visitRoot root,args=nil
      stmts=root.stmts.map{|stmt| stmt.accept(self)}
      ret=Root.new(stmts)
      ret.pass="transformed"
      ret
    end

    def visitRequire require_,args=nil
      Require.new(require.filename)
    end

    def visitModule module_,args=nil
      name=module_.name.accept(self)
      elements=module_.elements.map{|e| e.accept(self)}
      Module.new(name,elements)
    end

    def visitComment comment,args=nil
      Comment.new(comment.str)
    end

    def visitSingleTokenLit stl,args=nil
    end

    def visitIdent ident,args=nil
      token=ident.token.accept(self)
      Ident.new(token)
    end

    def visitIntLit intlit,args=nil
      IntLit.create intlit.token.val
    end

    def visitFloatLit floatlit,args=nil
      FloatLit.create floatlit.token.val
    end

    def visitTrueLit true_,args=nil
      TrueLit.create "true"
    end

    def visitFalseLit false_,args=nil
      FalseLit.create "false"
    end

    def visitStringLit str,args=nil
      StringLit.create str.token.val
    end

    def visitParam param,args=nil
      name=param.name.accept(self)
      type=param.parsed_type.accept(self)
      expr=param.expr.accept(self)
      Param.new(name,type,expr)
    end

    def visitIo io,args=nil
    end

    def visitInput input,args=nil
      name=input.name.accept(self)
      type=input.parsed_type.accept(self)
      Input.new(name,type)
    end

    def visitOutput output,args=nil
      name=output.name.accept(self)
      type=output.parsed_type.accept(self)
      Output.new(name,type)
    end

    def visitDeclaration declaration,args=nil
    end

    def visitVar var,args=nil
      name=var.name.accept(self)
      type=var.parsed_type.accept(self)
      Var.new(name,type)
    end

    def visitTypeDef typedef,args=nil
      name=typedef.name.accept(self)
      type=typedef.type.accept(self)
      TypeDef.new(name,type)
    end

    def visitType type,args=nil
      tok=type.token.accept(self)
      Type.new(tok)
    end

    def visitBasicType basic_type,args=nil
      tok=basic_type.token.accept(self)
      BasicType.new(tok)
    end

    def visitNil nil_,args=nil
      Nil.new
    end

    def visitNamedType named_type,args=nil
      name=named_type.name.accept(self)
      NamedType.new(name)
    end

    def visitArrayType array_type,args=nil
      size=array_type.size.accept(self)
      ptype=array_type.parsed_type.accept(self)
      ArrayType.new(size,ptype)
    end

    def visitRecordType record_type,args=nil
      formal_parameters=record_type.formal_parameters.map{|fp| fp.accept(self)}
      RecordType.new(formal_parameters)
    end

    def visitEnumDef enum_def,args=nil
      list=enum_def.list.map{|e| e.accept(self)}
      EnumDef.new(list)
    end

    def visitActor actor,args=nil
      puts " "+"|--[+] transforming actor #{actor.name.str}"
      ret=Actor.new
      ret.name=actor.name.accept(self)
      ret.includes=actor.includes.map{|inc| inc.accept(self)}
      ret.inputs=actor.inputs.map{|i| i.accept(self,args)}
      ret.outputs=actor.outputs.map{|o|o.accept(self,args)}
      ret.typedefs=actor.typedefs.each {|o| o.accept(self,args)}
      ret.vars=actor.vars.map{|v| v.accept(self,args)}
      ret.body=actor.body.accept(self,args)
      ret.funcs=actor.funcs.map{|func|func.accept(self,args)}
      ret
    end

    def visitSystem system,args=nil
      ret=System.new
      ret.name=system.name.accept(self)
      ret.includes=system.includes.map{|e| e.accept(self)}
      ret.params=system.params.map{|e| e.accept(self)}
      ret.inputs=system.inputs.map{|i| i.accept(self,args)}
      ret.outputs=system.outputs.map{|o|o.accept(self,args)}
      ret.instances=system.instances.map{|e| e.accept(self)}
      ret.connects=system.connects.map{|e| e.accept(self)}
      ret.generate_fors=system.generate_fors.map{|e| e.accept(self)}
      ret
    end

    def visitInclude include,args=nil
      name=include.name.accept(self)
      Include.new(name)
    end

    def visitInstance instance,args=nil
      name=instance.name.accept(self)
      type=instance.parsed_type.accept(self)
      Instance.new(name,type)
    end

    def visitConnect connect,args=nil
      source=connect.source.accept(self)
      sink=connect.sink.accept(self)
      channel=connect.channel.accept(self) if connect.channel
      Connect.new(source,sink,channel)
    end

    def visitCnxPort cnx_port,args=nil
      instance_name=cnx_port.instance_name.accept(self) if cnx_port.instance_name
      port_name=cnx_port.port_name.accept(self)
      CnxPort.new(instance_name,port_name)
    end
    # FSM
    def visitFsm fsm,args=nil
      states=fsm.states.map{|state| state.accept(self)}
      Fsm.new(states)
    end

    def visitState state,args=nil
      name=state.name.accept(self)
      body=state.body.accept(self)
      State.new(name,body)
    end

    def visitNext next_,args=nil
      state_name=next_.state_name.accept(self)
      Next.new(state_name)
    end

    # IR
    def visitIR ir,args=nil
      name=ir.name.accept(self) #bug fix
      bbs=ir.bbs.map{|bb| bb.accept(self)}
      new_ir=IR.new(name,bbs)

      IR_Builder.new.link(new_ir)
      IR_Finalizer.new.clean(new_ir)
      new_ir
    end

    def visitBasicBlock bb,args=nil
      label=bb.label.accept(self)
      stmts=bb.stmts.map{|stmt| stmt.accept(self)}
      infos={:label=>label}
      BasicBlock.new(infos,stmts)
    end
    #
    def visitBody body,args=nil
      stmts=body.stmts.map{|stmt| stmt.accept(self)}
      Body.new(stmts)
    end

    def visitParallel parallel,args=nil
      body=parallel.body.accept(self)
      Parallel.new(body)
    end

    def visitLabel label,args=nil
      ident=label.indent.accept(self)
      Label.new(ident)
    end

    def visitAssign assign,args=nil
      lhs=assign.lhs.accept(self)
      rhs=assign.rhs.accept(self)
      Assign.new(lhs,rhs)
    end

    def visitAccu accu,args=nil
      lhs=accu.lhs.accept(self)
      op=accu.op.accept(self)
      rhs=accu.rhs.accept(self)
      Accu.new(lhs,op,rhs)
    end

    def visitIf if_,args=nil
      cond=if_.cond.accept(self)
      then_=if_.then.accept(self)
      elsifs_=if_.elsifs.map{|elsif_| elsif_.accept(self)}
      else_=if_.else.accept(self)
      If.new(cond,then_,elsifs_,else_)
    end

    def visitElsif elsif_,args=nil
      cond=elsif_.cond.accept(self)
      body=elsif_.body.accept(self)
      Elsif.new(cond,body)
    end

    def visitPuts puts_,args=nil
      expr=puts_.expr.accept(self)
      Puts.new(expr)
    end

    def visitWhile while_,args=nil
      cond=while_.cond.accept(self)
      body=while_.body.accept(self)
      While.new(cond,body)
    end

    def visitFor for_,args=nil
      idx=for_.idx.accept(self)
      range=for_.range.accept(self)
      body=for_.body.accept(self)
      For.new(idx,range,body)
    end

    def visitRange range_,args=nil
      lhs=range_.lhs.accept(self)
      rhs=range_.rhs.accept(self)
      Range.new(lhs,rhs)
    end

    def visitFuncDef func_def,args=nil
      puts " "*5+"|--[+] transforming def '#{func_def.name}'"
      name=func_def.name.accept(self)
      formal_parameters=func_def.formal_parameters.map{|fp| fp.accept(self)}
      vars=func_def.vars.map{|v| v.accept(self)}
      body=func_def.body.accept(self)
      typedefs=func_def.typedefs.map{|td| td.accept(self)}
      FuncDef.new(name,formal_parameters,vars,body,typedefs)
    end

    def visitFormalParameter fp,args=nil
      name=fp.name.accept(self)
      type=fp.parsed_type.accept(self)
      FormalParameter.new(name,type)
    end

    def visitSend send,args=nil
      expr=send.expr.accept(self)
      port=send.port.accept(self)
      Send.new(expr,port)
    end

    def visitWrite write,args=nil
      expr=write.expr.accept(self)
      port=write.port.accept(self)
      Write.new(expr,port)
    end

    def visitReceive receive,args=nil
      expr=receive.expr.accept(self)
      port=receive.port.accept(self)
      Receive.new(expr,port)
    end

    def visitRead read,args=nil
      expr=read.expr.accept(self)
      port=read.port.accept(self)
      Read.new(expr,port)
    end

    def visitReturn return_,args=nil
      expr=return_.expr.accept(self)
      Return.new(expr)
    end

    def visitWait wait,args=nil
      Wait.new
    end

    def visitBinary binary,args=nil
      ret=Binary.new
      ret.lhs=binary.lhs.accept(self)
      ret.op=binary.op.accept(self)
      ret.rhs=binary.rhs.accept(self)
      ret.type=binary.type # <======= type  also propagated ?
      ret
    end

    def visitFuncCall func_call,args=nil
      name=func_call.name.accept(self)
      actual_parameters=func_call.actual_parameters.map{|ap| ap.accept(self)}
      FuncCall.new(name,actual_parameters)
    end

    def visitIndexed indexed,args=nil
      lhs=indexed.lhs.accept(self)
      rhs=indexed.rhs.accept(self)
      Indexed.new(lhs,rhs)
    end

    def visitPointed pointed,args=nil
      lhs=pointed.lhs.accept(self)
      rhs=pointed.rhs.accept(self)
      Pointed.new(lhs,rhs)
    end

    def visitRecordLit reclit,args=nil
      elements=reclit.elements.map{|e| e.accept(self)}
      RecordLit.new(elements)
    end

    def visitArrayLit arylit,args=nil
      elements=arylit.elements.map{|e| e.accept(self)}
      ArrayLit.new(elements)
    end

    def visitUnary unary,args=nil
      #:abtract
    end

    def visitMinus minus,args=nil
      expr=minus.expr.accept(self)
      Minus.new(expr)
    end

    def visitNot not_,args=nil
      expr=not_.expr.accept(self)
      Not.new(expr)
    end

    def visitParenth parenth,args=nil
      expr=parenth.expr.accept(self)
      Parenth.new(expr)
    end

    def visitPre pre,args=nil
      expr=pre.expr.accept(self)
      Pre.new(expr)
    end

    def visitValid valid,args=nil
      port_name=valid.port_name.accept(self)
      Valid.new(port_name)
    end

    def visitGoto goto,args=nil
      label=goto.label.accept(self)
      Goto.new(label)
    end

    def visitStop stop,args=nil
      Stop.new
    end

    def visitITE ite,args=nil
      cond=ite.cond.accept(self)
      label_true=ite.label_true.accept(self)
      label_false=ite.label_false.accept(self)
      new_ite=ITE.new(cond)
      new_ite.label_true=label_true
      new_ite.label_false=label_false
      new_ite
    end

    def visitReq req,args=nil
      port=req.port.accept(self)
      Req.new(port)
    end

    def visitUnreq unreq,args=nil
      port=unreq.port.accept(self)
      Unreq.new(port)
    end

    def visitAck ack,args=nil
      port=ack.port.accept(self)
      Ack.new(port)
    end

    def visitCallAck call_ack,args=nil
    end

    def visitCallReq call_req,args=nil
    end

    def visitCallUnreq call_unreq,args=nil
    end

    def visitCallRet call_ret,args=nil
    end

    def visitJTrue jtrue,args=nil
    end

    def visitJlt jlt,args=nil
    end

    def visitPhi phi,args=nil
    end


  end #def visitVisitor
end #module
