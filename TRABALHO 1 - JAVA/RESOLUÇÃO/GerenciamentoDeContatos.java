import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Scanner;

/*
TRABALHO DE PARADIGMAS DE PROGRAMAÇÃO - T1
Cauê Mendonça Mágela do Ó - RGM: 43558
Gabriela Marculino - RGM: 41431
*/

class ContatoDaAgenda {
    private String nomeContato;
    private String telefoneContato;

    public ContatoDaAgenda(String nomeContato, String telefoneContato) {
        this.nomeContato = nomeContato;
        this.telefoneContato = telefoneContato;
    }

    public String getNomeContato() {
        return nomeContato;
    }

    public String getTelefoneContato() {
        return telefoneContato;
    }
}

public class GerenciamentoDeContatos {
    private ArrayList<ContatoDaAgenda> contatoDaAgenda;
    private Scanner scanner;

    public GerenciamentoDeContatos() {

        contatoDaAgenda = new ArrayList<>();
        scanner = new Scanner(System.in);

    }

    public void inserirContatoNaAgenda(String nomeContato, String telefoneContato) {

        // Verifica se já existe um contato com o mesmo nome ou telefone
        for (ContatoDaAgenda contatoDaAgenda : this.contatoDaAgenda) {

            if (contatoDaAgenda.getNomeContato().equalsIgnoreCase(nomeContato) || contatoDaAgenda.getTelefoneContato().equals(telefoneContato)) {

                System.out.println("Já existe um contato com o mesmo nome ou telefone.");
                return;
            }
        }

        // Se não houver conflito, cria e adiciona o contato à lista
        ContatoDaAgenda contatoDaAgenda = new ContatoDaAgenda(nomeContato, telefoneContato);

        this.contatoDaAgenda.add(contatoDaAgenda);
        System.out.println("Contato adicionado com sucesso na agenda!");
    }

    public void buscarContatoPorNome(String nomeContato) {

        // Itera sobre a lista de contatos
        for (ContatoDaAgenda contatoDaAgenda : this.contatoDaAgenda) {

            // Compara o nome do contato atual com o nome buscado (ignorando maiúsculas/minúsculas)
            if (contatoDaAgenda.getNomeContato().equalsIgnoreCase(nomeContato)) {

                // Exibe as informações do contato encontrado
                System.out.println("Nome: " + contatoDaAgenda.getNomeContato());
                System.out.println("Telefone: " + contatoDaAgenda.getTelefoneContato());

                return;
            }
        }
        // Se nenhum contato correspondente for encontrado, exibe uma mensagem
        System.out.println("Contato não encontrado.");
    }


    public void buscarContatoPorTelefone(String telefoneContato) {

        // Itera sobre a lista de contatos
        for (ContatoDaAgenda contatoDaAgenda : this.contatoDaAgenda) {

            // Compara o telefone do contato atual com o telefone buscado
            if (contatoDaAgenda.getTelefoneContato().equals(telefoneContato)) {

                // Exibe as informações do contato encontrado
                System.out.println("Nome: " + contatoDaAgenda.getNomeContato());
                System.out.println("Telefone: " + contatoDaAgenda.getTelefoneContato());
                return;
            }
        }
        // Se nenhum contato correspondente for encontrado, exibe uma mensagem
        System.out.println("Contato não encontrado.");
    }

    public void excluirContatoPorNome(String nomeContato) {

        ContatoDaAgenda contatoDaAgendaParaRemover = null;

        // Itera sobre a lista de contatos
        for (ContatoDaAgenda contatoDaAgenda : this.contatoDaAgenda) {
            // Compara o nome do contato atual com o nome a ser excluído (ignorando maiúsculas/minúsculas)

            if (contatoDaAgenda.getNomeContato().equalsIgnoreCase(nomeContato)) {

                // Armazena o contato que será removido
                contatoDaAgendaParaRemover = contatoDaAgenda;
                break;
            }
        }
        // Se um contato correspondente for encontrado, remove-o da lista
        if (contatoDaAgendaParaRemover != null) {

            contatoDaAgenda.remove(contatoDaAgendaParaRemover);

            // Exibe uma mensagem informando que o contato foi removido
            System.out.println("Contato removido com sucesso!");

        } else {

            // Se nenhum contato correspondente for encontrado, exibe uma mensagem
            System.out.println("Contato não encontrado.");
        }
    }

    public void mostrarContatosEmOrdemAlfabetica() {

        // Ordena a lista de contatos por nome usando um comparador
        Collections.sort(contatoDaAgenda, Comparator.comparing(ContatoDaAgenda::getNomeContato));

        // Exibe os contatos em ordem alfabética
        System.out.println("Contatos em ordem alfabética:");

        for (ContatoDaAgenda contatoDaAgenda : this.contatoDaAgenda) {
            System.out.println("Nome: " + contatoDaAgenda.getNomeContato() + ", Telefone: " + contatoDaAgenda.getTelefoneContato());
        }
    }

    public void sair() {

        // Fecha o scanner para evitar vazamentos de recursos
        scanner.close();

        // Exibe uma mensagem de saída e encerra o programa
        System.out.println("Saindo da agenda...");
        System.exit(0);
    }

    public static void main(String[] args) {

        GerenciamentoDeContatos agenda = new GerenciamentoDeContatos();
        Scanner scanner = new Scanner(System.in);

        while (true) {

            System.out.println("Bem vindo,trabalho realizado por Cauê Mendonça e Gabriela Marculino\n");
            System.out.println("Escolha uma opção:\n");

            System.out.println("1 - INSERIR contato");
            System.out.println("2 - BUSCAR contato por nome");
            System.out.println("3 - BUSCAR contato por telefone");
            System.out.println("4 - EXCLUIR contato");
            System.out.println("5 - ORDENAR e MOSTRAR em odem alfabética");
            System.out.println("6 - SAIR\n");

            int opcao = scanner.nextInt();
            scanner.nextLine(); // Limpar o buffer

            switch (opcao) {
                case 1:
                    System.out.print("Digite o nome do contato: ");
                    String nome = scanner.nextLine();
                    System.out.print("Digite o telefone do contato: ");
                    String telefone = scanner.nextLine();
                    agenda.inserirContatoNaAgenda(nome, telefone);
                    break;
                case 2:
                    System.out.print("Digite o nome do contato a ser buscado: ");
                    String nomeBusca = scanner.nextLine();
                    agenda.buscarContatoPorNome(nomeBusca);
                    break;
                case 3:
                    System.out.print("Digite o telefone do contato a ser buscado: ");
                    String telefoneBusca = scanner.nextLine();
                    agenda.buscarContatoPorTelefone(telefoneBusca);
                    break;
                case 4:
                    System.out.print("Digite o nome do contato a ser excluído: ");
                    String nomeExclusao = scanner.nextLine();
                    agenda.excluirContatoPorNome(nomeExclusao);
                    break;
                case 5:
                    agenda.mostrarContatosEmOrdemAlfabetica();
                    break;
                case 6:
                    agenda.sair();
                    break;

                default:
                    System.out.println("Opção inválida.");
            }
        }
    }
}