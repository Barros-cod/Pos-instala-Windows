# 🚀 Windows Post-Install Tool

Uma ferramenta de automação desenvolvida em **PowerShell** para agilizar a configuração inicial do Windows após a formatação.

---

## 🧠 Sobre o Projeto
Todo profissional de TI sabe: formatar o Windows é rápido, o que demora é o "pós". Instalar navegadores, configurar extensões de arquivos, verificar drivers e atualizar o sistema consome um tempo precioso.

Este script foi criado para:
* **Eliminar tarefas repetitivas:** Instalação de apps via `winget`.
* **Padronizar o Setup:** Garantir que toda máquina tenha a mesma configuração base.
* **Segurança:** Testado e validado em ambiente de Máquina Virtual (VM) para garantir a integridade do sistema host.

---

## 🧩 Funcionalidades

| Recurso | Descrição |
| :--- | :--- |
| 🔄 **Windows Update** | Gerencia e força a instalação de patches de segurança. |
| 📦 **Instalação de Apps** | Instala automaticamente Chrome, 7zip e VLC via Winget. |
| ⚙️ **Ajustes de Explorer** | Habilita visualização de arquivos ocultos e extensões conhecidas. |
| 🔍 **Health Check** | Testa conectividade e identifica dispositivos com erro no Gerenciador de Dispositivos. |
| 📝 **Logs Detalhados** | Gera um relatório em `C:\temp` para auditoria do processo. |

---

## ▶️ Como Usar

> [!IMPORTANT]
> É necessário executar o PowerShell como **Administrador** para que as alterações tenham efeito.

1.  Clone o repositório ou baixe o arquivo `SuperPower.ps1`.
2.  Abra o terminal na pasta do script.
3.  Libere a execução de scripts localmente:
    ```powershell
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```
4.  Execute a ferramenta:
    ```powershell
    .\SuperPower.ps1
    ```

---

## 🛠️ Conceitos Aplicados
Este projeto demonstra a aplicação prática de:
* **Modularização:** Funções isoladas para cada tarefa.
* **Tratamento de Erros:** Blocos `try/catch` para evitar interrupções inesperadas.
* **Automação Silenciosa:** Uso de parâmetros `-silent` e `-h` para evitar prompts excessivos.
* **Troubleshooting:** Identificação preventiva de falhas de hardware/drivers.

---

## 📌 Observações Técnicas
* **Drivers:** Por segurança, o script não instala drivers automaticamente. Ele identifica o que falta e fornece os links oficiais (Intel, AMD, NVIDIA).
* **Personalização:** Você pode editar a variável `$apps` dentro da função `Instalar-Programas` para adicionar seus softwares favoritos.

---

## 🤝 Contribuição
Contribuições tornam a comunidade open source um lugar incrível!
1. Faça um **Fork** do projeto.
2. Crie uma **Branch** para sua modificação (`git checkout -b feature/NovaFuncao`).
3. Abra um **Pull Request**.
