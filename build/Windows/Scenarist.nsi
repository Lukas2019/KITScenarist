;NSIS Modern User Interface
;Welcome/Finish Page Example Script
;Written by Joost Verburg

;--------------------------------
;Include Modern UI

  !include "MUI2.nsh"
  
  ; ������ ��� ����������� ���������� ������
  ; ���� ������ http://nsis.sourceforge.net/File_Association , �������� ���� "Program Files\NSIS\Include"
  !include "FileAssociation.nsh"

;--------------------------------
;General

  ;Show all languages, despite user's codepage
  !define MUI_LANGDLL_ALLLANGUAGES

  !define pkgdir "files"

  ;Name and file
  Name "Digipitch Screenwriter"
  Caption "Installing application for creating stories"
  OutFile "Digipitch Screenwriter-setup.exe"
  BrandingText "DimkaNovikov labs."

  ;Default installation folder
  InstallDir "$PROGRAMFILES\Digipitch Screenwriter"
  InstallDirRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Digipitch Screenwriter" "UninstallString"

  ;Request application privileges for Windows Vista
  RequestExecutionLevel admin

;--------------------------------
;Interface Settings

  !define MUI_ABORTWARNING
  !define MUI_FINISHPAGE_RUN "$INSTDIR\Digipitch Screenwriter.exe"

;--------------------------------
;Pages

  !insertmacro MUI_PAGE_WELCOME
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES
  !insertmacro MUI_PAGE_FINISH

  !insertmacro MUI_UNPAGE_WELCOME
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  !insertmacro MUI_UNPAGE_FINISH

;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "German"
  !insertmacro MUI_LANGUAGE "English"
  !insertmacro MUI_LANGUAGE "Spanish"
  !insertmacro MUI_LANGUAGE "French"
  !insertmacro MUI_LANGUAGE "Hungarian"
  !insertmacro MUI_LANGUAGE "Polish"
  !insertmacro MUI_LANGUAGE "Portuguese"
  !insertmacro MUI_LANGUAGE "Russian"
  !insertmacro MUI_LANGUAGE "Turkish"
  !insertmacro MUI_LANGUAGE "Ukrainian"
  !insertmacro MUI_LANGUAGE "Farsi"
  !insertmacro MUI_LANGUAGE "Hebrew"

;--------------------------------
;Installer Sections

Section "App files section" SecFiles

  ; ���������� ��������� � ������ ������������� �������� �������
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Digipitch Screenwriter" "DisplayName" "Digipitch Screenwriter"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Digipitch Screenwriter" "Publisher" "DimkaNovikov labs."
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Digipitch Screenwriter" "DisplayIcon" "$INSTDIR\Digipitch Screenwriter.exe"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Digipitch Screenwriter" "UninstallString" "$INSTDIR\Uninstall.exe"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Digipitch Screenwriter" "UrlInfoAbout" "https://digipitch.com"
  
  SetOutPath "$INSTDIR"
  File /r "${pkgdir}\"

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninstall.exe"
  
  ; ������������ ���������� 
  ${registerExtension} "$INSTDIR\Digipitch Screenwriter.exe" ".dps" "Digipitch Screenwriter project"
  
  ; ��������� ���������
  System::Call 'Shell32::SHChangeNotify(i 0x8000000, i 0, i 0, i 0)'

SectionEnd

; Optional section (can be disabled by the user)
Section "Start Menu Shortcuts"

  CreateDirectory "$SMPROGRAMS\Digipitch Screenwriter"
  CreateShortCut "$SMPROGRAMS\Digipitch Screenwriter\Digipitch Screenwriter.lnk" "$INSTDIR\Digipitch Screenwriter.exe"
  CreateShortCut "$SMPROGRAMS\Digipitch Screenwriter\Uninstall.lnk" "$INSTDIR\Uninstall.exe" "" "$INSTDIR\Uninstall.exe" 0
  
SectionEnd

Section "Desctop Shortcut"

  CreateShortcut "$DESKTOP\Digipitch Screenwriter.lnk" "$INSTDIR\Digipitch Screenwriter.exe" "" "$INSTDIR\Digipitch Screenwriter.exe" 0
  
SectionEnd

;--------------------------------
;Uninstaller Section

Section "Uninstall"

  ; ������ ��������� �� ������ �������������
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Digipitch Screenwriter"
  
  ; ������� ��� ����� ����� ���� ������
  Delete "$INSTDIR\bearer\*.*"
  Delete "$INSTDIR\iconengines\*.*"
  Delete "$INSTDIR\imageformats\*.*"
  Delete "$INSTDIR\platforms\*.*"
  Delete "$INSTDIR\position\*.*"
  Delete "$INSTDIR\printsupport\*.*"
  Delete "$INSTDIR\qtwebengine\*.*"
  Delete "$INSTDIR\sqldrivers\*.*"
  Delete "$INSTDIR\translations\qtwebengine_locales\*.*"
  Delete "$INSTDIR\*.dll"
  Delete "$INSTDIR\*.exe"
  Delete "$INSTDIR\*.ico"
  Delete "$INSTDIR\*.dat"
  Delete "$INSTDIR\*.pak"

  ; Remove shortcuts, if any
  Delete "$SMPROGRAMS\Digipitch Screenwriter\*.*"
  Delete "$DESKTOP\Digipitch Screenwriter.lnk"

  ; Remove directories used
  RMDir "$INSTDIR\bearer"
  RMDir "$INSTDIR\iconengines"
  RMDir "$INSTDIR\imageformats"
  RMDir "$INSTDIR\platforms"
  RMDir "$INSTDIR\position"
  RMDir "$INSTDIR\printsupport"
  RMDir "$INSTDIR\qtwebengine"
  RMDir "$INSTDIR\sqldrivers"
  RMDir /r "$INSTDIR\translations"
  RMDir "$INSTDIR"
  RMDir "$SMPROGRAMS\Digipitch Screenwriter"
  
  ; �������� ������������������ ���������� ������
  ${unregisterExtension} ".dps" "Digipitch Screenwriter project"

SectionEnd

Function .onInit

	;Language selection dialog

	InitPluginsDir
	!insertmacro MUI_LANGDLL_DISPLAY
	
FunctionEnd

