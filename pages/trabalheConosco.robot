*** Variables ***
#& = dicionario {}= nome
&{trabalheConosco}
...  btnAccept=//*[contains(text(),"Accept")]
...  btnCadastrarCurriculo=//a[text()="CADASTRE SEU CURRÍCULO"]
...  nome=id:name
...  cargo=id:headline
...  email=id:email
...  telefone1=id:phone-0
...  pais=id:country
...  estado=id:region
...  cidade=id:city
...  bairro=id:neighborhood
...  endereco=id:address
...  cep=id:zipcode
...  curriculo=id:validatedCustomFile
...  btnFinalizar=//button[@type="submit"]

&{preencherFormulario}
...  nome=Nome Teste
...  cargo=Analista Automação
...  email=teste@teste.com
...  telefone1=11 99999999
...  pais=BR
...  estado=SP
...  cidade=Cidade Teste
...  bairro=Bairro Teste
...  endereco=Rua Automação
...  cep=99999999
...  curriculo=id:validatedCustomFile