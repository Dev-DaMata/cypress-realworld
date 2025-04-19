import { Cadastro } from "../../pages/Cadastro"
import cadastros from "../../mocks/factories/cadastros.js"
describe('Cadastro', () => {
    const cadastro = new Cadastro() 
    let cadastroUser = cadastros.cadastroData()

    it('cadastro completo', () => {
        cadastro.go()
        cadastro.signup(cadastroUser)
        cadastro.confirm()
        
    })
})