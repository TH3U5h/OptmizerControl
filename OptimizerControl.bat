::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBZVWAyHAE+1EbsQ5+n//NaXrEpTXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBZVWAyHAE+1EbsQ5+n//NaoslkQXfg6aqzU1KCcL+xd713hFQ==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: =====================================================================
:: PROJETO: OptimizerControl
:: DESCRICAO: Utilitario Avancado de Otimizacao de Software e Disco
:: AUTOR: TH3U5h
:: TIPO: Monolitico (Completo)
:: =====================================================================

chcp 65001 >nul
mode con: cols=100 lines=42
title OptimizerControl - Inicializacao

:: [1] INICIALIZACAO DE CORES ANSI
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
set "VERMELHO=%ESC%[91m"
set "VERDE=%ESC%[92m"
set "AMARELO=%ESC%[93m"
set "CIANO=%ESC%[96m"
set "BRANCO=%ESC%[97m"
set "CINZA=%ESC%[90m"
set "RESET=%ESC%[0m"

:: [2] VALIDACAO DE ADMINISTRADOR
net session >nul 2>&1
if %errorLevel% neq 0 (
    cls
    echo.
    echo %VERMELHO% ==================================================================================%RESET%
    echo %VERMELHO% [ERRO CRITICO] PRIVILEGIOS DE ADMINISTRADOR AUSENTES.%RESET%
    echo %VERMELHO% ==================================================================================%RESET%
    echo %BRANCO% O OptimizerControl requer acesso de nivel 'System' para realocar 
    echo  blocos logicos e redefinir protocolos de rede.
    echo.
    echo  Feche o programa, clique com o botao direito no arquivo e selecione:
    echo  "Executar como administrador".%RESET%
    echo.
    pause
    exit /b
)

:: [3] TELA DE TRANSPARENCIA
:TELA_TRANSPARENCIA
cls
title OptimizerControl - Transparencia e Seguranca
echo %CIANO% ==================================================================================%RESET%
echo %BRANCO%                        BEM-VINDO AO OPTIMIZER CONTROL%RESET%
echo %AMARELO%                              Feito por: TH3U5h%RESET%
echo %CIANO% ==================================================================================%RESET%
echo.
echo %AMARELO% [AVISO DE SEGURANCA E TRANSPARENCIA]%RESET%
echo %BRANCO% Este software executara alteracoes a nivel de nucleo no seu sistema operacional.%RESET%
echo %BRANCO% Nao ha riscos de perda de dados pessoais (Fotos, Documentos, Jogos).%RESET%
echo.
echo %VERDE% ACOES PERMITIDAS PELO UTILITARIO:%RESET%
echo %BRANCO% - Expurgo de arquivos temporarios e caches do sistema.%RESET%
echo %BRANCO% - Reset e otimizacao de protocolos de Rede (DNS/Winsock).%RESET%
echo %BRANCO% - Verificacao e reparo de integridade da imagem do Windows (SFC/DISM).%RESET%
echo %BRANCO% - Varredura estrutural de disco.%RESET%
echo.
echo %CIANO% ==================================================================================%RESET%
set /p ACEITE="%BRANCO% Voce compreende as acoes acima e deseja continuar? (S/N): %RESET%"

if /I "%ACEITE%"=="S" goto MENU_PRINCIPAL
if /I "%ACEITE%"=="N" exit /b
goto TELA_TRANSPARENCIA

:: [4] MENU PRINCIPAL
:MENU_PRINCIPAL
cls
title OptimizerControl - Painel de Controle
echo %CIANO% ==================================================================================%RESET%
echo %BRANCO%                           OPTIMIZER CONTROL - PAINEL%RESET%
echo %CINZA%                                 Por: TH3U5h%RESET%
echo %CIANO% ==================================================================================%RESET%
echo.
echo %AMARELO% [!] DIRETRIZ DE OPERACAO: Recomendado executar a cada 30 ou 45 dias.%RESET%
echo.
echo %VERDE% [1] OTIMIZACAO EXPRESSA (AUTOMATICA)%RESET%
echo %BRANCO%     Executa todas as correcoes essenciais de forma silenciosa e rapida.%RESET%
echo.
echo %AMARELO% [2] OTIMIZACAO MANUAL (CONTROLE GRANULAR)%RESET%
echo %BRANCO%     Permite que voce leia as explicacoes tecnicas e escolha o que limpar.%RESET%
echo.
echo %VERMELHO% [0] SAIR DO SISTEMA%RESET%
echo.
echo %CIANO% ==================================================================================%RESET%
set /p OPCAO="%BRANCO% Digite o numero da operacao desejada: %RESET%"

if "%OPCAO%"=="1" goto MODO_AUTOMATICO
if "%OPCAO%"=="2" goto MODO_MANUAL
if "%OPCAO%"=="0" exit /b
goto MENU_PRINCIPAL


:: =====================================================================
:: [5] MODO AUTOMATICO (Execucao Silenciosa)
:: =====================================================================
:MODO_AUTOMATICO
cls
title OptimizerControl - Execucao Automatica
echo %CIANO% ==================================================================================%RESET%
echo %BRANCO%                 MODO EXPRESSO INICIADO - POR FAVOR, AGUARDE...%RESET%
echo %CIANO% ==================================================================================%RESET%
echo.

echo %CINZA%[*] Purgando arquivos temporarios...%RESET%
del /q /f /s "%TEMP%\*" >nul 2>&1
del /q /f /s "%SystemRoot%\Temp\*" >nul 2>&1
del /q /f /s "%SystemRoot%\Prefetch\*" >nul 2>&1

echo %CINZA%[*] Resetando protocolos de rede...%RESET%
ipconfig /flushdns >nul
netsh winsock reset >nul

echo %CINZA%[*] Reparando imagem do sistema (DISM)...%RESET%
DISM /Online /Cleanup-Image /RestoreHealth >nul 2>&1

echo %CINZA%[*] Verificando integridade de arquivos (SFC)...%RESET%
sfc /scannow >nul 2>&1

echo %CINZA%[*] Agendando verificacao de disco logico...%RESET%
echo y | chkdsk C: /f >nul 2>&1

echo.
echo %VERDE%[OK] OTIMIZACAO AUTOMATICA CONCLUIDA COM SUCESSO!%RESET%
echo %AMARELO%[!] E necessario reiniciar o computador para aplicar todas as mudancas.%RESET%
echo.
echo %CIANO%==================================================================================%RESET%
echo %AMARELO% DIRETRIZES FINAIS DE OPERACAO:%RESET%
echo %BRANCO% Execute o utilitario a cada 30 ou 45 dias. O excesso de limpezas de cache%RESET%
echo %BRANCO% (diariamente ou semanalmente) e contraproducente, pois forca o processador e %RESET%
echo %BRANCO% o disco a reconstruirem rotas de DNS e logs desnecessariamente, causando latencia.%RESET%
echo %CIANO%==================================================================================%RESET%
pause
exit /b


:: =====================================================================
:: [6] MODO MANUAL INTERATIVO (Com educacao do usuario)
:: =====================================================================
:MODO_MANUAL
cls
title OptimizerControl - Controle Granular

:: --- MODULO 1: ARQUIVOS TEMPORARIOS ---
echo %CIANO% ==================================================================================%RESET%
echo %BRANCO%                    MODULO 1: EXPURGO DE DADOS OBSOLETOS%RESET%
echo %CIANO% ==================================================================================%RESET%
echo %AMARELO% [O QUE ISSO FAZ?]%RESET%
echo %BRANCO% O Windows acumula milhares de arquivos invisiveis gerados por instalacoes antigas,%RESET%
echo %BRANCO% logs de erro e rastreamentos de uso (Prefetch).%RESET%
echo %VERDE% [BENEFICIO]%RESET%
echo %BRANCO% Limpar essas pastas nao melhora o hardware fisico, mas otimiza a %CIANO%Tabela de Alocacao%RESET%
echo %BRANCO% do seu disco de armazenamento, reduzindo o tempo de leitura do sistema operacional%RESET%
echo %BRANCO% e liberando espaco logico valioso.%RESET%
echo.
set /p EXE_TEMP="%BRANCO% Deseja executar a purga de dados obsoletos? (S/N): %RESET%"

if /I "%EXE_TEMP%"=="S" (
    echo %CINZA%Limpando %TEMP%...%RESET%
    del /q /f /s "%TEMP%\*" >nul 2>&1
    echo %CINZA%Limpando Windows\Temp...%RESET%
    del /q /f /s "%SystemRoot%\Temp\*" >nul 2>&1
    echo %CINZA%Limpando Prefetch...%RESET%
    del /q /f /s "%SystemRoot%\Prefetch\*" >nul 2>&1
    echo %VERDE%[OK] Modulo 1 Concluido.%RESET%
) else (
    echo %AMARELO%[PULADO] Modulo 1 ignorado.%RESET%
)
echo.

:: --- MODULO 2: REDE ---
echo %CIANO% ==================================================================================%RESET%
echo %BRANCO%                    MODULO 2: OTIMIZACAO E RESET DE REDE%RESET%
echo %CIANO% ==================================================================================%RESET%
echo %AMARELO% [O QUE ISSO FAZ?]%RESET%
echo %BRANCO% O sistema mantem um cache (memoria rapida) dos enderecos de IP dos sites e jogos%RESET%
echo %BRANCO% que voce acessa (Cache DNS). Tambem possui uma interface de rede chamada Winsock.%RESET%
echo %VERDE% [BENEFICIO]%RESET%
echo %BRANCO% Quando servidores de jogos ou sites mudam de IP, seu cache antigo causa latencia%RESET%
echo %BRANCO% (ping alto) ou falha de conexao. Limpar isso forca o PC a buscar a rota mais nova%RESET%
echo %BRANCO% e estavel disponivel no seu provedor de internet.%RESET%
echo.
set /p EXE_REDE="%BRANCO% Deseja executar o reset da pilha de rede? (S/N): %RESET%"

if /I "%EXE_REDE%"=="S" (
    echo %CINZA%Limpando Cache DNS...%RESET%
    ipconfig /flushdns >nul
    echo %CINZA%Resetando Winsock...%RESET%
    netsh winsock reset >nul
    echo %VERDE%[OK] Modulo 2 Concluido.%RESET%
) else (
    echo %AMARELO%[PULADO] Modulo 2 ignorado.%RESET%
)
echo.

:: --- MODULO 3: REPARO DE IMAGEM ---
echo %CIANO% ==================================================================================%RESET%
echo %BRANCO%                    MODULO 3: INTEGRIDADE DO NUCLEO (SFC / DISM)%RESET%
echo %CIANO% ==================================================================================%RESET%
echo %AMARELO% [O QUE ISSO FAZ?]%RESET%
echo %BRANCO% Ferramentas nativas que scaneiam o disco em busca de arquivos vitais do Windows%RESET%
echo %BRANCO% que foram corrompidos por travamentos, falta de energia ou virus.%RESET%
echo %VERDE% [BENEFICIO]%RESET%
echo %BRANCO% O DISM conecta-se aos servidores da Microsoft para baixar os pacotes originais.%RESET%
echo %BRANCO% O SFC substitui os arquivos locais quebrados. Isso resolve telas azuis e travamentos.%RESET%
echo %VERMELHO% [!] ATENCAO: Este processo pode levar ate 20 minutos.%RESET%
echo.
set /p EXE_IMG="%BRANCO% Deseja executar o reparo da imagem do sistema? (S/N): %RESET%"

if /I "%EXE_IMG%"=="S" (
    echo %CINZA%Iniciando DISM (Baixando pacotes de reparo, aguarde)...%RESET%
    DISM /Online /Cleanup-Image /RestoreHealth
    echo %CINZA%Iniciando SFC (Substituindo binarios corrompidos, aguarde)...%RESET%
    sfc /scannow
    echo %VERDE%[OK] Modulo 3 Concluido.%RESET%
) else (
    echo %AMARELO%[PULADO] Modulo 3 ignorado.%RESET%
)
echo.

:: --- CONCLUSAO ---
cls
echo %CIANO% ==================================================================================%RESET%
echo %VERDE%                 OTIMIZACAO MANUAL FINALIZADA COM SUCESSO!%RESET%
echo %CIANO% ==================================================================================%RESET%
echo.
echo %BRANCO% As operacoes selecionadas foram executadas diretamente no nucleo do sistema.%RESET%
echo %AMARELO% [!] AVISO FINAL:%RESET%
echo %BRANCO% Para que algumas mudancas (especialmente Rede e Registro) entrem em vigor,%RESET%
echo %BRANCO% voce precisa reiniciar o computador.%RESET%
echo.
echo %CIANO% ==================================================================================%RESET%
echo %AMARELO% DIRETRIZES FINAIS DE OPERACAO:%RESET%
echo %BRANCO% Execute o utilitario a cada 30 ou 45 dias. O excesso de limpezas de cache%RESET%
echo %BRANCO% (diariamente ou semanalmente) e contraproducente, pois forca o processador e %RESET%
echo %BRANCO% o disco a reconstruirem rotas de DNS e logs desnecessariamente, causando latencia.%RESET%
echo %CIANO% ==================================================================================%RESET%
pause
exit /b