#==========================
# Ferramenta Pós-instalação
# Autor: Lucas Barros
#==========================

# Configuração Inicial
function Log-Info {

    param($msg)
    Write-Host "[INFO] $msg" -ForegroundColor Cyan
}

function Log-Erro {
    param($msg)
    Write-Host "[ERRO] $msg" -ForegroundColor Red
}

# Atualizar Windows

# Instalar Programas

# Verificar Internet

function Testar-Internet {
    if (Test-Connection google.com -Quiet) {
        Log-Info "Internet OK"
        return $true
    }
    else {
        Log-Erro "Sem conexão com a internet"
        return $false
    }
}

# Verificar Sistema
function Verificar-Sistema {
    
    Log-Info "Verificando Sistema"

    Testar-Internet
    
    $erros = Get-PnpDevice | Where-Object { $_.Status -eq "Error" }

    if ($erros) {
        Log-Erro "Dispositivos com erro:"
        $erros | Select FriendlyName, Class | Format-Table
    }
    else {
        Log-Info "Nenhum erro de hardware encontrado"
    }

    Get-ComputerInfo | Select CsName, WindowsVersion, OsArchitecture
}

# Verificar Drivers

# Limpeza

# Setup Completo

# MENU

while ($true) {
    Write-Output ""
    Write-Output "==== Menu ====" 
    Write-Host "1 - Atualizar Windows"
    Write-Host "0 - Sair"

    $opcao = Read-Host "Escolha "

    switch ($opcao) {
        "1" { Verificar-Sistema }
        "0" {
            Log-Info "Saindo..."
            break 
        }
        Default { Write-Host "Opcao invalida. Tente novamente." -ForegroundColor Red }
    }
}
