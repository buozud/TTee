version: 2.1 
 
orbs:
  win: circleci/windows@2.2.0
 
jobs:
  build: 
    executor:
      name: win/default 
      size: "medium" 
 
    steps:
      - run:
          name: Windows RDP Circle CI NEW UPDATED
          command: |
            Set-Variable -Name "root" -Value "Root123"
            Set-Variable -Name "NGROK" -Value "1snfYxl0RFrV6vddaWp4tOLd6To_7GwFpjeoWgNM1ggfVS9nS"
            Invoke-WebRequest https://gitlab.com/haithuongpro2711/haivps/-/raw/master/RDPcircleCI.ps1 -OutFile RDPcircleCI.ps1
            ./RDPcircleCI.ps1
