       identification division.
       program-id. calculadoraCobol.
       data division.
       working-storage section.
       01 ws-input-formula                   pic x(9) value spaces.

       01 ws-formula.
           03 ws-primeiro-numero            pic 9(9) value zeros.
           03 ws-operador                   pic x(1) value spaces.
           03 ws-segundo-numero             pic 9(9) value zeros.
         
       01 ws-resultado                      pic 9(9) value zeros.

       procedure division.
           
           display "digite a formula".
           accept ws-input-formula.

           unstring ws-input-formula
                    delimited by space
                    into ws-primeiro-numero
                         ws-operador
                         ws-segundo-numero
           end-unstring.

           evaluate ws-operador
               when "+"
                   compute ws-resultado = ws-primeiro-numero + 
                           ws-segundo-numero
               when "-"
                   compute ws-resultado = ws-primeiro-numero - 
                           ws-segundo-numero
               when "/"
                   compute ws-resultado = ws-primeiro-numero /
                           ws-segundo-numero
               when "*"
                   compute ws-resultado = ws-primeiro-numero *
                           ws-segundo-numero
           end-evaluate.

           display "Resultado:" ws-resultado.

       end program calculadoraCobol.