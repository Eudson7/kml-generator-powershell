# KML Generator PowerShell

![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)

---

## 🇬🇧 English

A powerful and automated tool for converting geographic coordinates from TXT files to KML format, compatible with Google Earth, Google Maps, and other GIS platforms.

### 📦 Download and Installation

#### Option 1: Direct Download
Download the following files:
- [Create_Kml_with_PowerShell.ps1](https://github.com/Eudson7/kml-generator-powershell/raw/main/Create_Kml_with_PowerShell.ps1)
- [Run_KML.bat](https://github.com/Eudson7/kml-generator-powershell/raw/main/Run_KML.bat)
- [pontos_coletados.txt](https://github.com/Eudson7/kml-generator-powershell/raw/main/pontos_coletados.txt) (example file)

#### Option 2: Clone the Repository
```bash
git clone https://github.com/Eudson7/kml-generator-powershell.git
cd kml-generator-powershell
```

### 🚀 How to Use (3 Simple Steps)

#### Step 1: Prepare Your Data
Edit the `pontos_coletados.txt` file with the following format:
```
Name;Longitude;Latitude
Rio Branco;-67.82430;-9.97499
São Paulo;-46.63610;-23.54750
```

#### Step 2: Run the Conversion
- **Easy Method**: Double-click `Run_KML.bat`.
- **Advanced Method**: Open PowerShell and run:
  ```powershell
  PowerShell -ExecutionPolicy Bypass -File Create_Kml_with_PowerShell.ps1
  ```

#### Step 3: Visualize the Output
Open the generated `pontos_coletados.kml` file in:
- Google Earth
- Google Maps (import the file)
- Any GIS software

### ✨ Key Features
- **Fast Conversion**: Processes thousands of points in seconds.
- **Automatic Validation**: Ensures correct coordinate format.
- **Proper Encoding**: Uses UTF-8 without BOM for full compatibility.
- **Detailed Statistics**: Displays processed points and errors.
- **Customizable**: Supports custom parameters for advanced use.

### 🛠️ Advanced Customization
Customize the script execution with parameters:
```powershell
# Use custom input and output files
PowerShell -File Create_Kml_with_PowerShell.ps1 -InputFile "my_data.txt" -OutputFile "my_map.kml"

# Silent execution (no prompts)
PowerShell -File Create_Kml_with_PowerShell.ps1 | Out-Null
```

### 📊 Input File Format
Each line in the input file must follow this format:
```
Name;Longitude;Latitude
```
**Examples**:
```
Cristo Redentor;-43.2106;-22.9519
Copacabana Beach;-43.1865;-22.9692
Eiffel Tower;2.2945;48.8584
```

**Important**:
- Use a period (`.`) for decimal values, not a comma.
- Order: `Name;Longitude;Latitude`.
- Separate fields with a semicolon (`;`).

### 🐛 Troubleshooting
- **Error: "Execution Policy Restricted"**
  ```powershell
  # Run as administrator and allow scripts
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```
- **Error: "File not found"**
  - Ensure the TXT file is in the same directory as the script.
  - Verify the file name: `pontos_coletados.txt`.
- **Error: "Invalid format"**
  - Confirm the use of `;` as the separator.
  - Verify the order: `Name;Longitude;Latitude`.

### 📋 Example Output
Upon successful execution:
```
==============================================
KML Generator PowerShell v1.0.0
Author: Eudson Santos
==============================================
Processing file: C:\path\to\pontos_coletados.txt
==============================================
CONVERSION COMPLETED!
Generated KML file: C:\path\to\pontos_coletados.kml
Points processed: 26
Lines ignored: 0
Total lines: 26
==============================================
```

### 🤝 Contributing
1. Fork the project.
2. Create a feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

### 📝 License
Distributed under the MIT License. See the [LICENSE](LICENSE) file for details.

### 👨‍💻 Author
**Eudson Santos**  
- **LinkedIn**: [Eudson Santos](https://www.linkedin.com/in/eudsonsantos/)  
- **GitHub**: [@Eudson7](https://github.com/Eudson7)  
- **Email**: [eudson7@gmail.com](mailto:eudson7@gmail.com)

### 🙌 Acknowledgments
- Google Earth team for the KML format.
- PowerShell community for amazing tools.
- Contributors and users of this project.

### ⭐ Like the Project?
Give it a star on [GitHub](https://github.com/Eudson7/kml-generator-powershell)!

### 🔗 Repository
Access the full repository: [https://github.com/Eudson7/kml-generator-powershell](https://github.com/Eudson7/kml-generator-powershell)

**Keywords**: PowerShell, KML, Google Earth, coordinate converter, GIS, automation, mapping, geolocation, TXT to KML, PowerShell script, open source

---

## 🇧🇷 Português

Uma ferramenta poderosa e automatizada para conversão de coordenadas geográficas de arquivos TXT para o formato KML, compatível com Google Earth, Google Maps e outras plataformas GIS.

### 📦 Download e Instalação

#### Opção 1: Download Direto
Baixe os seguintes arquivos:
- [Create_Kml_with_PowerShell.ps1](https://github.com/Eudson7/kml-generator-powershell/raw/main/Create_Kml_with_PowerShell.ps1)
- [Run_KML.bat](https://github.com/Eudson7/kml-generator-powershell/raw/main/Run_KML.bat)
- [pontos_coletados.txt](https://github.com/Eudson7/kml-generator-powershell/raw/main/pontos_coletados.txt) (arquivo de exemplo)

#### Opção 2: Clonar o Repositório
```bash
git clone https://github.com/Eudson7/kml-generator-powershell.git
cd kml-generator-powershell
```

### 🚀 Como Usar (3 Passos Simples)

#### Passo 1: Prepare Seus Dados
Edite o arquivo `pontos_coletados.txt` com o seguinte formato:
```
Nome do Local;Longitude;Latitude
Rio Branco;-67.82430;-9.97499
São Paulo;-46.63610;-23.54750
```

#### Passo 2: Execute a Conversão
- **Método Fácil**: Clique duas vezes em `Run_KML.bat`.
- **Método Avançado**: Abra o PowerShell e execute:
  ```powershell
  PowerShell -ExecutionPolicy Bypass -File Create_Kml_with_PowerShell.ps1
  ```

#### Passo 3: Visualize o Resultado
Abra o arquivo gerado `pontos_coletados.kml` em:
- Google Earth
- Google Maps (importar o arquivo)
- Qualquer software GIS

### ✨ Características Principais
- **Conversão Rápida**: Processa milhares de pontos em segundos.
- **Validação Automática**: Garante o formato correto das coordenadas.
- **Codificação Adequada**: Usa UTF-8 sem BOM para compatibilidade total.
- **Estatísticas Detalhadas**: Exibe pontos processados e erros.
- **Customizável**: Suporta parâmetros personalizados para uso avançado.

### 🛠️ Personalização Avançada
Personalize a execução do script com parâmetros:
```powershell
# Usar arquivos de entrada e saída personalizados
PowerShell -File Create_Kml_with_PowerShell.ps1 -InputFile "meus_dados.txt" -OutputFile "meu_mapa.kml"

# Execução silenciosa (sem prompts)
PowerShell -File Create_Kml_with_PowerShell.ps1 | Out-Null
```

### 📊 Formato do Arquivo de Entrada
Cada linha do arquivo de entrada deve seguir este formato:
```
Nome_do_Ponto;Longitude;Latitude
```
**Exemplos**:
```
Cristo Redentor;-43.2106;-22.9519
Praia de Copacabana;-43.1865;-22.9692
Torre Eiffel;2.2945;48.8584
```

**Importante**:
- Use ponto (`.`) para valores decimais, não vírgula.
- Ordem: `Nome;Longitude;Latitude`.
- Separe os campos com ponto e vírgula (`;`).

### 🐛 Solução de Problemas
- **Erro: "Execution Policy Restricted"**
  ```powershell
  # Execute como administrador e permita scripts
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```
- **Erro: "Arquivo não encontrado"**
  - Certifique-se de que o arquivo TXT está no mesmo diretório do script.
  - Verifique o nome do arquivo: `pontos_coletados.txt`.
- **Erro: "Formato inválido"**
  - Confirme o uso de `;` como separador.
  - Verifique a ordem: `Nome;Longitude;Latitude`.

### 📋 Exemplo de Saída
Após execução bem-sucedida:
```
==============================================
KML Generator PowerShell v1.0.0
Autor: Eudson Santos
==============================================
Processando arquivo: C:\caminho\pontos_coletados.txt
==============================================
CONVERSÃO CONCLUÍDA!
Arquivo KML gerado: C:\caminho\pontos_coletados.kml
Pontos processados: 26
Linhas ignoradas: 0
Total de linhas: 26
==============================================
```

### 🤝 Como Contribuir
1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`).
3. Commit suas mudanças (`git commit -m 'Add AmazingFeature'`).
4. Push para a branch (`git push origin feature/AmazingFeature`).
5. Abra um Pull Request.

### 📝 Licença
Distribuído sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

### 👨‍💻 Autor
**Eudson Santos**  
- **LinkedIn**: [Eudson Santos](https://www.linkedin.com/in/eudsonsantos/)  
- **GitHub**: [@Eudson7](https://github.com/Eudson7)  
- **Email**: [eudson7@gmail.com](mailto:eudson7@gmail.com)

### 🙌 Agradecimentos
- Equipe do Google Earth pelo formato KML.
- Comunidade PowerShell por ferramentas incríveis.
- Contribuidores e usuários do projeto.

### ⭐ Gostou do Projeto?
Dê uma estrela no [GitHub](https://github.com/Eudson7/kml-generator-powershell)!

### 🔗 Repositório
Acesse o repositório completo: [https://github.com/Eudson7/kml-generator-powershell](https://github.com/Eudson7/kml-generator-powershell)

**Palavras-chave**: PowerShell, KML, Google Earth, conversor de coordenadas, GIS, automação, mapeamento, geolocalização, TXT para KML, script PowerShell, open source