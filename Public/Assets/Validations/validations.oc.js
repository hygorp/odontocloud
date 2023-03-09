$(function(){
    $('.frmLogin').form({
        fields: {
            usuario: {
                identifier: 'usuario',
                rules: [
                    {
                        type: 'empty',
                        prompt: 'Preencha o campo Usuário'
                    }
                ]
            },
            senha: {
                identifier: 'senha',
                rules: [
                    {
                        type: 'empty',
                        prompt: 'Preencha o campo Senha'
                    }
                ]
            }
        }
    });
});