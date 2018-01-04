package steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import model.Botao;
import model.Componente;
import model.Formulario;

import static org.junit.Assert.assertEquals;

public class UploadStepdefs {

    private Formulario formulario;

    @Given("^que o usuário acessou a tela preencher formulario$")
    public void queOUsuárioAcessouATelaPreencherFormulario() throws Throwable {
        this.formulario = new Formulario();
        this.formulario.init();

        this.formulario.addComponentList(new Botao("adicionar", "Adicionar"));
    }

    @When("^seleciona a opção de adicionar formulario$")
    public void selecionaAOpçãoDeAdicionarFormulario() throws Throwable {
        for(Componente c: this.formulario.getComponentList()){
            if (c.getId().equalsIgnoreCase("adicionar"))
                ((Botao)c).click();
        }
    }

    @When("^selecionar a opção de Upload de Imagens$")
    public void selecionarAOpçãoDeUploadDeImagens() throws Throwable {
    }

    @When("^selecionar uma imagem do formato PNG$")
    public void selecionarUmaImagemDoFormatoPNG() throws Throwable {
    }

    @When("^selecionar uma imagem do formato JPEG$")
    public void selecionarUmaImagemDoFormatoJPEG() throws Throwable {
    }

    @When("^selecionar uma imagem do formato TIFF$")
    public void selecionarUmaImagemDoFormatoTIFF() throws Throwable {
    }

    @When("^selecionar a opção Enviar\\.$")
    public void selecionarAOpçãoEnviar() throws Throwable {
    }

    @Then("^verifica a mensagem de sucesso$")
    public void verificaAMensagemDeSucesso() throws Throwable {
    }

    @Given("^que o usuário acessou a tela de consulta de processos$")
    public void queOUsuárioAcessouATelaDeConsultaDeProcessos() throws Throwable {
    }

    @When("^seleciona os filtros desejados$")
    public void selecionaOsFiltrosDesejados() throws Throwable {
    }

    @When("^selecionar a opção consultar$")
    public void selecionarAOpçãoConsultar() throws Throwable {
    }

    @Then("^verifica o resultado da pesquisa$")
    public void verificaOResultadoDaPesquisa() throws Throwable {
    }

    @When("^selecionar a opção Voltar\\.$")
    public void selecionarAOpçãoVoltar() throws Throwable {
    }

    @Then("^verifica que não existem imagens anexadas ao processo\\.$")
    public void verificaQueNãoExistemImagensAnexadasAoProcesso() throws Throwable {
    }

    @When("^selecionar uma imagem com mais de um documento na imagem$")
    public void selecionarUmaImagemComMaisDeUmDocumentoNaImagem() throws Throwable {
    }

    @When("^selecionar uma imagem ilegível$")
    public void selecionarUmaImagemIlegível() throws Throwable {
    }

    @Then("^verifica a mensagem de erro$")
    public void verificaAMensagemDeErro() throws Throwable {
    }

    @Given("^que o usuário acessou a tela adicionar formulario$")
    public void queOUsuárioAcessouATelaAdicionarFormulario() throws Throwable {
    }

    @When("^adiciona formulario e faz upload de imagens$")
    public void adicionaFormularioEFazUploadDeImagens() throws Throwable {
    }

    @When("^verifica as imagens anexadas ao processo$")
    public void verificaAsImagensAnexadasAoProcesso() throws Throwable {
    }

    @Then("^verifica que as imagens estão anexadas e tipificadas$")
    public void verificaQueAsImagensEstãoAnexadasETipificadas() throws Throwable {
    }
}
