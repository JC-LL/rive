require_relative 'code'

module Rive

  class PrettyPrinter

    def print ast
      ast.accept(self)
    end

    def visitRoot root,args=nil
      code=Code.new
      code << "--automatically generated"
      root.list.each{|e| code << e.accept(self)}
      code
    end

    def visitComment comment,args=nil
      code=Code.new
      comment.list.each{|e| code << e.accept(self)}
      code
    end

    def visitIdent id,args=nil
      id.token.val
    end

  end
end
