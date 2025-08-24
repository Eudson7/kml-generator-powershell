<#
.SYNOPSIS
    Converte arquivos TXT com coordenadas para formato KML
.DESCRIPTION
    Script PowerShell para conversão de coordenadas geográficas em formato TXT
    para arquivos KML compatíveis com Google Earth e outras plataformas GIS
.AUTHOR
    Seu Nome - seu.email@provedor.com
.LINK
    https://github.com/seuusuario/kml-generator-powershell
.VERSION
    1.0.0
#>

param(
    [string]$InputFile = 'pontos_coletados.txt',
    [string]$OutputFile = 'pontos_coletados.kml'
)

Write-Host "==============================================" -ForegroundColor Green
Write-Host "KML Generator PowerShell v1.0.0" -ForegroundColor Yellow
Write-Host "Autor: Seu Nome" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Green

try {
    # Pega a pasta onde o script está sendo executado
    $basePath = Get-Location

    # Arquivos de entrada e saída
    $inFile  = Join-Path $basePath $InputFile
    $outFile = Join-Path $basePath $OutputFile

    # Verifica se arquivo de entrada existe
    if (-not (Test-Path $inFile)) {
        throw "Arquivo de entrada não encontrado: $inFile"
    }

    Write-Host "Processando arquivo: $inFile" -ForegroundColor White

    # Cabeçalho e rodapé KML
    $kmlHeader = @(
        '<?xml version="1.0" encoding="UTF-8"?>'
        '<kml xmlns="http://www.opengis.net/kml/2.2">'
        '  <Document>'
        "    <name>Pontos Coletados - Gerado em $(Get-Date -Format 'dd/MM/yyyy HH:mm:ss')</name>"
        '    <description>Gerado por KML Generator PowerShell</description>'
    )
    
    $kmlFooter = @(
        '  </Document>'
        '</kml>'
    )

    # Contadores para estatísticas
    $totalLines = 0
    $processedPoints = 0
    $skippedLines = 0

    # Cria arquivo novo com cabeçalho (UTF-8 sem BOM)
    [System.IO.File]::WriteAllLines($outFile, $kmlHeader, (New-Object System.Text.UTF8Encoding($false)))

    # Lê cada linha do TXT e gera um Placemark
    Get-Content $inFile | ForEach-Object {
        $totalLines++
        if ($_ -match '^(.*?);(-?\d+\.\d+);(-?\d+\.\d+)$') {
            $nome = $matches[1].Trim()
            $lon  = $matches[2].Trim()
            $lat  = $matches[3].Trim()

            $placemark = @"
    <Placemark>
      <name>$nome</name>
      <description>Coordenadas: $lon, $lat</description>
      <Point>
        <coordinates>$lon,$lat,0</coordinates>
      </Point>
    </Placemark>
"@
            [System.IO.File]::AppendAllText($outFile, $placemark, (New-Object System.Text.UTF8Encoding($false)))
            $processedPoints++
        } else {
            Write-Host "Linha $totalLines ignorada (formato inválido): $_" -ForegroundColor Yellow
            $skippedLines++
        }
    }

    # Fecha o KML
    [System.IO.File]::AppendAllText($outFile, ($kmlFooter -join "`r`n"), (New-Object System.Text.UTF8Encoding($false)))

    Write-Host "==============================================" -ForegroundColor Green
    Write-Host "CONVERSÃO CONCLUÍDA!" -ForegroundColor Green
    Write-Host "Arquivo KML gerado: $outFile" -ForegroundColor White
    Write-Host "Pontos processados: $processedPoints" -ForegroundColor Green
    Write-Host "Linhas ignoradas: $skippedLines" -ForegroundColor Yellow
    Write-Host "Total de linhas: $totalLines" -ForegroundColor Cyan
    Write-Host "==============================================" -ForegroundColor Green

} catch {
    Write-Host "ERRO: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}