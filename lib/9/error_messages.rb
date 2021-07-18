# begin
#   calc_method(3)
#   1 / 0
# # 捕捉したいエラーのみを限定することが可能
# # 以下の場合NomethodとZerofivisioのみは捕捉可能であるが、他のエラーが出ると処理は止まる
# # NameErrorはNoMethodErrorの親クラス
# rescue NameError => e 
#   p e.message
# rescue ZeroDivisionError => e
#   p e.class
#   p e.message
#   #   メソッドの呼び出し履歴
#   p e.backtrace
# end


