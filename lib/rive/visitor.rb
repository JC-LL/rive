require_relative 'code'

module Rive

  # here we transform an AST into another AST.
  # we don't use Marshalling.

  class Visitor

    attr_accessor :code

    def initialize
      @verbose=true
      @verbose=false
    end

    def visit ast
      ast.accept(self)
    end

    def visitToken tok, args=nil
      Token.new [tok.kind,tok.val,tok.pos]
    end

    def visitRoot root,args=nil
      root.stmts.each{|stmt| stmt.accept(self)}
    end

    def visitComment comment,args=nil
      comment
    end

    def visitIdent ident,args=nil
      token=ident.token.accept(self)
      Ident.new(token)
    end

  end #def visitVisitor
end #module
