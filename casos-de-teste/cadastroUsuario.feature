Feature: Cadastro de Usuário
Casos de teste para o cadastro de usuário
    
    Scenario: Cadastro de usuário com sucesso 
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário com dados válidos
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de sucesso

    Scenario: Cadastro sem o primeiro nome  
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário sem o primeiro nome
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que o primeiro nome é obrigatório
    
    Scenario: Cadastro sem o último nome
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário sem o último nome
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que o último nome é obrigatório

    Scenario: Cadastro sem Username
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário sem o username
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que o username é obrigatório

    Scenario: Cadastro sem senha
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário sem a senha
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que a senha é obrigatória
    
    Scenario: Cadastro com sem a confirmacao da senha
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário sem a confirmação da senha
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que a confirmação da senha é obrigatória

    Scenario: Cadastro com um username já existente
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário com um username já existente
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que o username já existe

    Scenario: Cadastro com uma senha muito curta
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário com uma senha muito curta
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que a senha deve ter pelo menos 4 caracteres

    Scenario: Cadastro com a confirmacao de senha diferente da senha
        Given que eu não tenha um cadastro de usuário
        When eu estiver na pagina de cadastro de usuário
        And preencher o formulário com a confirmação de senha diferente da senha
        And clicar no botão de cadastro
        Then eu devo ver uma mensagem de erro informando que a confirmação da senha deve ser igual a senha