#-------------------------------------------------
#
# Project created by QtCreator 2014-01-26T12:01:05
#
#-------------------------------------------------

QT       += core core-private gui gui-private sql xml widgets widgets-private printsupport network

TARGET = Scenarist
TEMPLATE = app

CONFIG += c++11

#
# Отключаем предупреждения о статических функциях и переменных
# не используемых в собственных заголовочных файлах
#
unix: QMAKE_CXXFLAGS += -Wno-unused-function -Wno-unused-variable

QMAKE_MAC_SDK = macosx10.11

#
# Включить профилирование
#
QMAKE_CXXFLAGS_DEBUG += -pg
QMAKE_LFLAGS_DEBUG += -pg
#

#
# Конфигурируем расположение файлов сборки
#
CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/../../build/Debug/bin/scenarist-desktop
} else {
    DESTDIR = $$PWD/../../build/Release/bin/scenarist-desktop
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.ui
#

#
# Подключаем библиотеку HUNSPELL
#
win32:CONFIG(release, debug|release): LIBS += -L$$DESTDIR/../../libs/hunspell/release/ -lhunspell
else:win32:CONFIG(debug, debug|release): LIBS += -L$$DESTDIR/../../libs/hunspell/debug/ -lhunspell
else:unix: LIBS += -L$$DESTDIR/../../libs/hunspell/ -lhunspell

INCLUDEPATH += $$PWD/../libs/hunspell/src
DEPENDPATH += $$PWD/../libs/hunspell
#

#
# Подключаем библиотеку fileformats
#
win32:CONFIG(release, debug|release): LIBS += -L$$DESTDIR/../../libs/fileformats/release/ -lfileformats
else:win32:CONFIG(debug, debug|release): LIBS += -L$$DESTDIR/../../libs/fileformats/debug/ -lfileformats
else:unix: LIBS += -L$$DESTDIR/../../libs/fileformats/ -lfileformats

INCLUDEPATH += $$PWD/../libs/fileformats
DEPENDPATH += $$PWD/../libs/fileformats
#

#
# Подключаем библилотеку WebLoader
#
win32:CONFIG(release, debug|release): LIBS += -L$$DESTDIR/../../libs/webloader/release/ -lwebloader
else:win32:CONFIG(debug, debug|release): LIBS += -L$$DESTDIR/../../libs/webloader/debug/ -lwebloader
else:unix: LIBS += -L$$DESTDIR/../../libs/webloader/ -lwebloader

INCLUDEPATH += $$PWD/../libs/webloader
DEPENDPATH += $$PWD/../libs/webloader
#

INCLUDEPATH += $$PWD/scenarist-core
INCLUDEPATH += $$PWD/scenarist-desktop

SOURCES += \
    scenarist-desktop/main.cpp \
    scenarist-desktop/ManagementLayer/ApplicationManager.cpp \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioManager.cpp \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioTextEditManager.cpp \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioNavigatorManager.cpp \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioCardsManager.cpp \
    scenarist-desktop/ManagementLayer/Locations/LocationsNavigatorManager.cpp \
    scenarist-desktop/ManagementLayer/Locations/LocationsManager.cpp \
    scenarist-desktop/ManagementLayer/Characters/CharactersManager.cpp \
    scenarist-desktop/ManagementLayer/Characters/CharactersNavigatorManager.cpp \
    scenarist-desktop/ManagementLayer/Settings/SettingsManager.cpp \
    scenarist-desktop/ManagementLayer/StartUp/StartUpManager.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEdit.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioNavigator/ScenarioNavigator.cpp \
    scenarist-desktop/ManagementLayer/Locations/LocationsDataEditManager.cpp \
    scenarist-desktop/ManagementLayer/Characters/CharactersDataEditManager.cpp \
    scenarist-desktop/UserInterfaceLayer/Project/ProjectDataEdit/ProjectDataEdit.cpp \
    scenarist-desktop/UserInterfaceLayer/Project/ProjectNavigator/ProjectNavigator.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioCards/ScenarioCards.cpp \
    scenarist-desktop/UserInterfaceLayer/Project/ProjectCards/ProjectCards.cpp \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersDataEdit/CharactersDataEdit.cpp \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersNavigator/CharactersNavigator.cpp \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsDataEdit/LocationsDataEdit.cpp \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsNavigator/LocationsNavigator.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioDocument.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioModel.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioModelItem.cpp \
    scenarist-core/BusinessLayer/Chronometry/CharactersChronometer.cpp \
    scenarist-core/BusinessLayer/Chronometry/ChronometerFacade.cpp \
    scenarist-core/BusinessLayer/Chronometry/ConfigurableChronometer.cpp \
    scenarist-core/DataLayer/Database/Database.cpp \
    scenarist-core/DataLayer/DataMappingLayer/AbstractMapper.cpp \
    scenarist-core/DataLayer/DataMappingLayer/CharacterMapper.cpp \
    scenarist-core/DataLayer/DataMappingLayer/LocationMapper.cpp \
    scenarist-core/DataLayer/DataMappingLayer/MapperFacade.cpp \
    scenarist-core/DataLayer/DataMappingLayer/PlaceMapper.cpp \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioDayMapper.cpp \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioMapper.cpp \
    scenarist-core/DataLayer/DataMappingLayer/SettingsMapper.cpp \
    scenarist-core/DataLayer/DataMappingLayer/TimeMapper.cpp \
    scenarist-core/DataLayer/DataStorageLayer/CharacterStorage.cpp \
    scenarist-core/DataLayer/DataStorageLayer/LocationStorage.cpp \
    scenarist-core/DataLayer/DataStorageLayer/PlaceStorage.cpp \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioDayStorage.cpp \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioStorage.cpp \
    scenarist-core/DataLayer/DataStorageLayer/SettingsStorage.cpp \
    scenarist-core/DataLayer/DataStorageLayer/StorageFacade.cpp \
    scenarist-core/DataLayer/DataStorageLayer/TimeStorage.cpp \
    scenarist-core/Domain/Character.cpp \
    scenarist-core/Domain/DomainObject.cpp \
    scenarist-core/Domain/Identifier.cpp \
    scenarist-core/Domain/Location.cpp \
    scenarist-core/Domain/Place.cpp \
    scenarist-core/Domain/Scenario.cpp \
    scenarist-core/Domain/ScenarioDay.cpp \
    scenarist-core/Domain/Time.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/AbstractKeyHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/ActionHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/CharacterHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/DialogHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/FolderFooterHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/FolderHeaderHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/KeyPressHandlerFacade.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/NoteHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/ParentheticalHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/PreHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/PrepareHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneGroupFooterHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneGroupHeaderHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/StandardKeyHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/TitleHandler.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/TransitionHandler.cpp \
    scenarist-core/3rd_party/Widgets/CompletableTextEdit/CompletableTextEdit.cpp \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SpellChecker.cpp \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SpellCheckHighlighter.cpp \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SpellCheckTextEdit.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioNavigator/ScenarioNavigatorItemDelegate.cpp \
    scenarist-core/3rd_party/Widgets/ElidedLabel/ElidedLabel.cpp \
    scenarist-core/BusinessLayer/Export/PdfExporter.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioXml.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTextDocument.cpp \
    scenarist-desktop/UserInterfaceLayer/StartUp/StartUpView.cpp \
    scenarist-desktop/UserInterfaceLayer/StartUp/RecentFilesDelegate.cpp \
    scenarist-desktop/UserInterfaceLayer/StartUp/RecentFileWidget.cpp \
    scenarist-core/3rd_party/Widgets/SideBar/SideBar.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEditWidget.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTextBlockParsers.cpp \
    scenarist-desktop/UserInterfaceLayer/Settings/SettingsView.cpp \
    scenarist-desktop/UserInterfaceLayer/ApplicationView.cpp \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersNavigator/CharactersNavigatorItemDelegate.cpp \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersNavigator/CharactersNavigatorItemWidget.cpp \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsNavigator/LocationsNavigatorItemDelegate.cpp \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsNavigator/LocationsNavigatorItemWidget.cpp \
    scenarist-core/3rd_party/Widgets/SimpleTextEditor/SimpleTextEditor.cpp \
    scenarist-core/3rd_party/Widgets/PhotosChooser/PhotosChooser.cpp \
    scenarist-core/3rd_party/Widgets/PhotosChooser/PhotoLabel.cpp \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxwidget.cpp \
    scenarist-core/3rd_party/Widgets/PhotosChooser/PhotoPreview.cpp \
    scenarist-core/Domain/LocationPhoto.cpp \
    scenarist-core/DataLayer/DataMappingLayer/LocationPhotoMapper.cpp \
    scenarist-core/DataLayer/DataStorageLayer/LocationPhotoStorage.cpp \
    scenarist-core/Domain/CharacterPhoto.cpp \
    scenarist-core/DataLayer/DataMappingLayer/CharacterPhotoMapper.cpp \
    scenarist-core/DataLayer/DataStorageLayer/CharacterPhotoStorage.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEditHelpers.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTextBlockInfo.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioSceneSynopsis/ScenarioSceneSynopsis.cpp \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioSceneSynopsisManager.cpp \
    scenarist-core/3rd_party/Widgets/TabBar/TabBar.cpp \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SyntaxHighlighter.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioLineEdit.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioItemDialog/ScenarioItemDialog.cpp \
    scenarist-core/3rd_party/Widgets/SearchWidget/SearchWidget.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioFastFormatWidget.cpp \
    scenarist-core/3rd_party/Widgets/PagesTextEdit/PageMetrics.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioNavigator/ScenarioNavigatorProxyStyle.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneCharactersHandler.cpp \
    scenarist-desktop/ManagementLayer/Export/ExportManager.cpp \
    scenarist-desktop/UserInterfaceLayer/Export/ExportDialog.cpp \
    scenarist-core/Domain/CharacterState.cpp \
    scenarist-core/DataLayer/DataMappingLayer/CharacterStateMapper.cpp \
    scenarist-core/DataLayer/DataStorageLayer/CharacterStateStorage.cpp \
    scenarist-core/BusinessLayer/Export/AbstractExporter.cpp \
    scenarist-core/BusinessLayer/Counters/CountersFacade.cpp \
    scenarist-desktop/Application.cpp \
    scenarist-desktop/ManagementLayer/Import/ImportManager.cpp \
    scenarist-desktop/UserInterfaceLayer/Import/ImportDialog.cpp \
    scenarist-core/3rd_party/Widgets/ProgressWidget/ProgressWidget.cpp \
    scenarist-core/BusinessLayer/Import/DocumentImporter.cpp \
    scenarist-core/BusinessLayer/Export/DocxExporter.cpp \
    scenarist-core/3rd_party/Widgets/ScalableWrapper/ScalableWrapper.cpp \
    scenarist-core/BusinessLayer/Chronometry/PagesChronometer.cpp \
    scenarist-core/3rd_party/Widgets/AcceptebleLineEdit/AcceptebleLineEdit.cpp \
    scenarist-core/3rd_party/Delegates/ComboBoxItemDelegate/ComboBoxItemDelegate.cpp \
    scenarist-core/3rd_party/Helpers/BackupHelper.cpp \
    scenarist-core/3rd_party/Widgets/HierarchicalHeaderView/HierarchicalHeaderView.cpp \
    scenarist-core/3rd_party/Widgets/HierarchicalHeaderView/HierarchicalTableModel.cpp \
    scenarist-core/3rd_party/Widgets/FlatButton/FlatButton.cpp \
    scenarist-core/3rd_party/Delegates/KeySequenceDelegate/KeySequenceDelegate.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEditPrivate.cpp \
    scenarist-desktop/ManagementLayer/Synchronization/SynchronizationManager.cpp \
    scenarist-desktop/UserInterfaceLayer/Settings/TemplateDialog.cpp \
    scenarist-desktop/ManagementLayer/Settings/SettingsTemplatesManager.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTemplate.cpp \
    scenarist-desktop/UserInterfaceLayer/StartUp/LoginDialog.cpp \
    scenarist-desktop/ManagementLayer/Project/ProjectsManager.cpp \
    scenarist-desktop/ManagementLayer/Project/Project.cpp \
    scenarist-core/DataLayer/DataMappingLayer/DatabaseHistoryMapper.cpp \
    scenarist-core/DataLayer/DataStorageLayer/DatabaseHistoryStorage.cpp \
    scenarist-core/Domain/ScenarioChange.cpp \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioChangeMapper.cpp \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioChangeStorage.cpp \
    scenarist-core/3rd_party/Helpers/DiffMatchPatch.cpp \
    scenarist-core/Domain/ScenarioData.cpp \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioDataStorage.cpp \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioDataMapper.cpp \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxdialog.cpp \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxinputdialog.cpp \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxmessage.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/NoprintableTextHandler.cpp \
    scenarist-core/3rd_party/Widgets/ToolTipLabel/ToolTipLabel.cpp \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioReviewModel.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioReviewPanel.cpp \
    scenarist-core/3rd_party/Widgets/ColoredToolButton/ColoredToolButton.cpp \
    scenarist-core/3rd_party/Widgets/ColoredToolButton/GoogleColorsPane.cpp \
    scenarist-core/3rd_party/Widgets/ColoredToolButton/WordHighlightColorsPane.cpp \
    scenarist-core/3rd_party/Widgets/QWidgetListView/qwidgetlistview.cpp \
    scenarist-core/3rd_party/Widgets/QWidgetListView/qtmodelwidget.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioReviewView.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioReviewItemDelegate.cpp \
    scenarist-core/3rd_party/Widgets/Ctk/ctkCollapsibleButton.cpp \
    scenarist-desktop/UserInterfaceLayer/Statistics/StatisticsView.cpp \
    scenarist-desktop/ManagementLayer/Statistics/StatisticsManager.cpp \
    scenarist-core/3rd_party/Widgets/Ctk/ctkPopupWidget.cpp \
    scenarist-core/3rd_party/Widgets/Ctk/ctkBasePopupWidget.cpp \
    scenarist-desktop/UserInterfaceLayer/Statistics/StatisticsSettings.cpp \
    scenarist-desktop/UserInterfaceLayer/Statistics/ReportButton.cpp \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneHeadingHandler.cpp \
    scenarist-core/BusinessLayer/Statistics/Reports/LocationReport.cpp \
    scenarist-core/BusinessLayer/Statistics/Reports/SceneReport.cpp \
    scenarist-core/BusinessLayer/Statistics/Reports/CastReport.cpp \
    scenarist-core/BusinessLayer/Statistics/Reports/CharacterReport.cpp \
    scenarist-core/BusinessLayer/Statistics/Reports/SummaryReport.cpp \
    scenarist-desktop/UserInterfaceLayer/Settings/LanguageDialog.cpp \
    scenarist-core/DataLayer/DataMappingLayer/ResearchMapper.cpp \
    scenarist-core/Domain/Research.cpp \
    scenarist-core/DataLayer/DataStorageLayer/ResearchStorage.cpp \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchView.cpp \
    scenarist-desktop/ManagementLayer/Research/ResearchManager.cpp \
    scenarist-core/BusinessLayer/Research/ResearchModel.cpp \
    scenarist-core/BusinessLayer/Research/ResearchModelItem.cpp \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchNavigatorItemDelegate.cpp \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchNavigatorProxyStyle.cpp \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchItemDialog.cpp \
    scenarist-core/3rd_party/Widgets/WAF/SideSlide/BackgroundDecorator.cpp \
    scenarist-core/3rd_party/Widgets/WAF/SideSlide/SideSlideAnimator.cpp \
    scenarist-core/3rd_party/Widgets/WAF/SideSlide/SideSlideBackgroundDecorator.cpp \
    scenarist-core/3rd_party/Widgets/WAF/Slide/SlideAnimator.cpp \
    scenarist-core/3rd_party/Widgets/WAF/Slide/SlideBackgroundDecorator.cpp \
    scenarist-core/3rd_party/Widgets/WAF/Animation.cpp \
    scenarist-core/3rd_party/Widgets/QCutomPlot/qcustomplot.cpp \
    scenarist-core/BusinessLayer/Statistics/Plots/StoryStructureAnalisysPlot.cpp \
    scenarist-core/BusinessLayer/Statistics/StatisticsFacade.cpp \
    scenarist-core/3rd_party/Widgets/QCutomPlot/qcustomplotextended.cpp \
    scenarist-core/BusinessLayer/Statistics/Plots/CharactersActivityPlot.cpp \
    scenarist-core/3rd_party/Widgets/PagesTextEdit/PageTextEdit.cpp

HEADERS += \
    scenarist-desktop/ManagementLayer/ApplicationManager.h \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioManager.h \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioTextEditManager.h \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioNavigatorManager.h \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioCardsManager.h \
    scenarist-desktop/ManagementLayer/Locations/LocationsNavigatorManager.h \
    scenarist-desktop/ManagementLayer/Locations/LocationsManager.h \
    scenarist-desktop/ManagementLayer/Characters/CharactersManager.h \
    scenarist-desktop/ManagementLayer/Characters/CharactersNavigatorManager.h \
    scenarist-desktop/ManagementLayer/Settings/SettingsManager.h \
    scenarist-desktop/ManagementLayer/StartUp/StartUpManager.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEdit.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioNavigator/ScenarioNavigator.h \
    scenarist-desktop/ManagementLayer/Locations/LocationsDataEditManager.h \
    scenarist-desktop/ManagementLayer/Characters/CharactersDataEditManager.h \
    scenarist-desktop/UserInterfaceLayer/Project/ProjectDataEdit/ProjectDataEdit.h \
    scenarist-desktop/UserInterfaceLayer/Project/ProjectNavigator/ProjectNavigator.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioCards/ScenarioCards.h \
    scenarist-desktop/UserInterfaceLayer/Project/ProjectCards/ProjectCards.h \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersDataEdit/CharactersDataEdit.h \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersNavigator/CharactersNavigator.h \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsDataEdit/LocationsDataEdit.h \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsNavigator/LocationsNavigator.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioDocument.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioModel.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioModelItem.h \
    scenarist-core/BusinessLayer/Chronometry/AbstractChronometer.h \
    scenarist-core/BusinessLayer/Chronometry/CharactersChronometer.h \
    scenarist-core/BusinessLayer/Chronometry/ChronometerFacade.h \
    scenarist-core/BusinessLayer/Chronometry/ConfigurableChronometer.h \
    scenarist-core/DataLayer/Database/Database.h \
    scenarist-core/DataLayer/DataMappingLayer/AbstractMapper.h \
    scenarist-core/DataLayer/DataMappingLayer/CharacterMapper.h \
    scenarist-core/DataLayer/DataMappingLayer/LocationMapper.h \
    scenarist-core/DataLayer/DataMappingLayer/MapperFacade.h \
    scenarist-core/DataLayer/DataMappingLayer/PlaceMapper.h \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioDayMapper.h \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioMapper.h \
    scenarist-core/DataLayer/DataMappingLayer/SettingsMapper.h \
    scenarist-core/DataLayer/DataMappingLayer/TimeMapper.h \
    scenarist-core/DataLayer/DataStorageLayer/CharacterStorage.h \
    scenarist-core/DataLayer/DataStorageLayer/LocationStorage.h \
    scenarist-core/DataLayer/DataStorageLayer/PlaceStorage.h \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioDayStorage.h \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioStorage.h \
    scenarist-core/DataLayer/DataStorageLayer/SettingsStorage.h \
    scenarist-core/DataLayer/DataStorageLayer/StorageFacade.h \
    scenarist-core/DataLayer/DataStorageLayer/TimeStorage.h \
    scenarist-core/Domain/Character.h \
    scenarist-core/Domain/DomainObject.h \
    scenarist-core/Domain/Identifier.h \
    scenarist-core/Domain/Location.h \
    scenarist-core/Domain/Place.h \
    scenarist-core/Domain/Scenario.h \
    scenarist-core/Domain/ScenarioDay.h \
    scenarist-core/Domain/Time.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/AbstractKeyHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/ActionHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/CharacterHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/DialogHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/FolderFooterHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/FolderHeaderHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/KeyPressHandlerFacade.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/NoteHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/ParentheticalHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/PreHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/PrepareHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneGroupFooterHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneGroupHeaderHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/StandardKeyHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/TitleHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/TitleHeaderHandler.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/TransitionHandler.h \
    scenarist-core/3rd_party/Widgets/CompletableTextEdit/CompletableTextEdit.h \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SpellChecker.h \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SpellCheckHighlighter.h \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SpellCheckTextEdit.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioNavigator/ScenarioNavigatorItemDelegate.h \
    scenarist-core/3rd_party/Widgets/ElidedLabel/ElidedLabel.h \
    scenarist-core/BusinessLayer/Export/AbstractExporter.h \
    scenarist-core/BusinessLayer/Export/PdfExporter.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioXml.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTextDocument.h \
    scenarist-desktop/UserInterfaceLayer/StartUp/StartUpView.h \
    scenarist-desktop/UserInterfaceLayer/StartUp/RecentFilesDelegate.h \
    scenarist-desktop/UserInterfaceLayer/StartUp/RecentFileWidget.h \
    scenarist-core/3rd_party/Widgets/SideBar/SideBar.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEditWidget.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTextBlockParsers.h \
    scenarist-desktop/UserInterfaceLayer/Settings/SettingsView.h \
    scenarist-desktop/UserInterfaceLayer/ApplicationView.h \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersNavigator/CharactersNavigatorItemDelegate.h \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersNavigator/CharactersNavigatorItemWidget.h \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsNavigator/LocationsNavigatorItemDelegate.h \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsNavigator/LocationsNavigatorItemWidget.h \
    scenarist-core/3rd_party/Widgets/SimpleTextEditor/SimpleTextEditor.h \
    scenarist-core/3rd_party/Widgets/PhotosChooser/PhotosChooser.h \
    scenarist-core/3rd_party/Widgets/PhotosChooser/PhotoLabel.h \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxwidget.h \
    scenarist-core/3rd_party/Widgets/PhotosChooser/PhotoPreview.h \
    scenarist-core/Domain/LocationPhoto.h \
    scenarist-core/DataLayer/DataMappingLayer/LocationPhotoMapper.h \
    scenarist-core/DataLayer/DataStorageLayer/LocationPhotoStorage.h \
    scenarist-core/Domain/CharacterPhoto.h \
    scenarist-core/DataLayer/DataMappingLayer/CharacterPhotoMapper.h \
    scenarist-core/DataLayer/DataStorageLayer/CharacterPhotoStorage.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEditHelpers.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTextBlockInfo.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioSceneSynopsis/ScenarioSceneSynopsis.h \
    scenarist-desktop/ManagementLayer/Scenario/ScenarioSceneSynopsisManager.h \
    scenarist-core/3rd_party/Widgets/TabBar/TabBar.h \
    scenarist-core/3rd_party/Widgets/SpellCheckTextEdit/SyntaxHighlighter.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioLineEdit.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioItemDialog/ScenarioItemDialog.h \
    scenarist-core/3rd_party/Widgets/SearchWidget/SearchWidget.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioFastFormatWidget.h \
    scenarist-core/3rd_party/Widgets/PagesTextEdit/PageMetrics.h \
    scenarist-core/3rd_party/Helpers/TextEditHelper.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioNavigator/ScenarioNavigatorProxyStyle.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneCharactersHandler.h \
    scenarist-desktop/ManagementLayer/Export/ExportManager.h \
    scenarist-desktop/UserInterfaceLayer/Export/ExportDialog.h \
    scenarist-core/Domain/CharacterState.h \
    scenarist-core/DataLayer/DataMappingLayer/CharacterStateMapper.h \
    scenarist-core/DataLayer/DataStorageLayer/CharacterStateStorage.h \
    scenarist-core/BusinessLayer/Counters/CountersFacade.h \
    scenarist-desktop/Application.h \
    scenarist-core/BusinessLayer/Import/AbstractImporter.h \
    scenarist-desktop/ManagementLayer/Import/ImportManager.h \
    scenarist-desktop/UserInterfaceLayer/Import/ImportDialog.h \
    scenarist-core/3rd_party/Widgets/ProgressWidget/ProgressWidget.h \
    scenarist-core/BusinessLayer/Import/DocumentImporter.h \
    scenarist-core/BusinessLayer/Export/DocxExporter.h \
    scenarist-core/3rd_party/Widgets/ScalableWrapper/ScalableWrapper.h \
    scenarist-core/BusinessLayer/Chronometry/PagesChronometer.h \
    scenarist-core/BusinessLayer/Counters/Counter.h \
    scenarist-core/3rd_party/Widgets/AcceptebleLineEdit/AcceptebleLineEdit.h \
    scenarist-core/3rd_party/Delegates/ComboBoxItemDelegate/ComboBoxItemDelegate.h \
    scenarist-core/3rd_party/Helpers/BackupHelper.h \
    scenarist-core/3rd_party/Widgets/HierarchicalHeaderView/HierarchicalHeaderView.h \
    scenarist-core/3rd_party/Widgets/HierarchicalHeaderView/HierarchicalTableModel.h \
    scenarist-core/3rd_party/Widgets/FlatButton/FlatButton.h \
    scenarist-core/3rd_party/Delegates/KeySequenceDelegate/KeySequenceDelegate.h \
    scenarist-core/3rd_party/Helpers/ShortcutHelper.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioTextEditPrivate.h \
    scenarist-desktop/ManagementLayer/Synchronization/SynchronizationManager.h \
    scenarist-desktop/UserInterfaceLayer/Settings/TemplateDialog.h \
    scenarist-desktop/ManagementLayer/Settings/SettingsTemplatesManager.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioTemplate.h \
    scenarist-desktop/UserInterfaceLayer/StartUp/LoginDialog.h \
    scenarist-core/3rd_party/Helpers/PasswordStorage.h \
    scenarist-desktop/ManagementLayer/Project/ProjectsManager.h \
    scenarist-desktop/ManagementLayer/Project/Project.h \
    scenarist-core/3rd_party/Helpers/QVariantMapWriter.h \
    scenarist-core/3rd_party/Helpers/ImageHelper.h \
    scenarist-core/DataLayer/DataMappingLayer/DatabaseHistoryMapper.h \
    scenarist-core/DataLayer/DataStorageLayer/DatabaseHistoryStorage.h \
    scenarist-core/Domain/ScenarioChange.h \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioChangeMapper.h \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioChangeStorage.h \
    scenarist-core/3rd_party/Helpers/DiffMatchPatchHelper.h \
    scenarist-core/3rd_party/Helpers/DiffMatchPatch.h \
    scenarist-core/Domain/ScenarioData.h \
    scenarist-core/DataLayer/DataStorageLayer/ScenarioDataStorage.h \
    scenarist-core/DataLayer/DataMappingLayer/ScenarioDataMapper.h \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxdialog.h \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxinputdialog.h \
    scenarist-core/3rd_party/Widgets/QLightBoxWidget/qlightboxmessage.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/NoprintableTextHandler.h \
    scenarist-core/3rd_party/Widgets/ToolTipLabel/ToolTipLabel.h \
    scenarist-core/BusinessLayer/ScenarioDocument/ScenarioReviewModel.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioReviewPanel.h \
    scenarist-core/3rd_party/Widgets/ColoredToolButton/ColoredToolButton.h \
    scenarist-core/3rd_party/Widgets/ColoredToolButton/ColorsPane.h \
    scenarist-core/3rd_party/Widgets/ColoredToolButton/GoogleColorsPane.h \
    scenarist-core/3rd_party/Widgets/ColoredToolButton/WordHighlightColorsPane.h \
    scenarist-core/3rd_party/Widgets/QWidgetListView/qwidgetlistview.h \
    scenarist-core/3rd_party/Widgets/QWidgetListView/qtmodelwidget.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioReviewView.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/ScenarioReviewItemDelegate.h \
    scenarist-core/DataLayer/Database/DatabaseHelper.h \
    scenarist-core/3rd_party/Widgets/Ctk/ctkCollapsibleButton.h \
    scenarist-desktop/UserInterfaceLayer/Statistics/StatisticsView.h \
    scenarist-desktop/ManagementLayer/Statistics/StatisticsManager.h \
    scenarist-core/3rd_party/Widgets/Ctk/ctkPopupWidget.h \
    scenarist-core/3rd_party/Widgets/Ctk/ctkPopupWidget_p.h \
    scenarist-core/3rd_party/Widgets/Ctk/ctkBasePopupWidget.h \
    scenarist-core/3rd_party/Widgets/Ctk/ctkBasePopupWidget_p.h \
    scenarist-core/3rd_party/Widgets/Ctk/ctkPimpl.h \
    scenarist-desktop/UserInterfaceLayer/Statistics/StatisticsSettings.h \
    scenarist-core/BusinessLayer/Statistics/Reports/AbstractReport.h \
    scenarist-desktop/UserInterfaceLayer/Statistics/ReportButton.h \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioTextEdit/Handlers/SceneHeadingHandler.h \
    scenarist-core/BusinessLayer/Statistics/Reports/LocationReport.h \
    scenarist-core/BusinessLayer/Statistics/Reports/SceneReport.h \
    scenarist-core/BusinessLayer/Statistics/Reports/CastReport.h \
    scenarist-core/BusinessLayer/Statistics/Reports/CharacterReport.h \
    scenarist-core/BusinessLayer/Statistics/Reports/SummaryReport.h \
    scenarist-desktop/UserInterfaceLayer/Settings/LanguageDialog.h \
    scenarist-core/DataLayer/DataMappingLayer/ResearchMapper.h \
    scenarist-core/Domain/Research.h \
    scenarist-core/DataLayer/DataStorageLayer/ResearchStorage.h \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchView.h \
    scenarist-desktop/ManagementLayer/Research/ResearchManager.h \
    scenarist-core/BusinessLayer/Research/ResearchModel.h \
    scenarist-core/BusinessLayer/Research/ResearchModelItem.h \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchNavigatorItemDelegate.h \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchNavigatorProxyStyle.h \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchItemDialog.h \
    scenarist-core/3rd_party/Widgets/WAF/SideSlide/BackgroundDecorator.h \
    scenarist-core/3rd_party/Widgets/WAF/SideSlide/SideSlideAnimator.h \
    scenarist-core/3rd_party/Widgets/WAF/SideSlide/SideSlideBackgroundDecorator.h \
    scenarist-core/3rd_party/Widgets/WAF/Slide/SlideAnimator.h \
    scenarist-core/3rd_party/Widgets/WAF/Slide/SlideBackgroundDecorator.h \
    scenarist-core/3rd_party/Widgets/WAF/AbstractAnimator.h \
    scenarist-core/3rd_party/Widgets/WAF/Animation.h \
    scenarist-core/3rd_party/Widgets/WAF/AnimationPrivate.h \
    scenarist-core/3rd_party/Helpers/ScrollerHelper.h \
    scenarist-core/3rd_party/Helpers/StyleSheetHelper.h \
    scenarist-core/3rd_party/Helpers/Task.h \
    scenarist-core/3rd_party/Widgets/QCutomPlot/qcustomplot.h \
    scenarist-core/BusinessLayer/Statistics/Plots/AbstractPlot.h \
    scenarist-core/BusinessLayer/Statistics/StatisticsParameters.h \
    scenarist-core/BusinessLayer/Statistics/Plots/StoryStructureAnalisysPlot.h \
    scenarist-core/BusinessLayer/Statistics/StatisticsFacade.h \
    scenarist-core/3rd_party/Widgets/QCutomPlot/qcustomplotextended.h \
    scenarist-core/BusinessLayer/Statistics/Plots/CharactersActivityPlot.h \
    scenarist-core/3rd_party/Widgets/PagesTextEdit/PageTextEdit.h \
    scenarist-core/3rd_party/Widgets/PagesTextEdit/PageTextEdit_p.h

FORMS += \
    scenarist-desktop/UserInterfaceLayer/StartUp/StartUpView.ui \
    scenarist-desktop/UserInterfaceLayer/Characters/CharactersDataEdit/CharactersDataEdit.ui \
    scenarist-desktop/UserInterfaceLayer/Locations/LocationsDataEdit/LocationsDataEdit.ui \
    scenarist-desktop/UserInterfaceLayer/Settings/SettingsView.ui \
    scenarist-desktop/UserInterfaceLayer/Scenario/ScenarioDataEdit/ScenarioDataEdit.ui \
    scenarist-desktop/UserInterfaceLayer/Export/ExportDialog.ui \
    scenarist-desktop/UserInterfaceLayer/Import/ImportDialog.ui \
    scenarist-desktop/UserInterfaceLayer/Settings/TemplateDialog.ui \
    scenarist-desktop/UserInterfaceLayer/StartUp/LoginDialog.ui \
    scenarist-desktop/UserInterfaceLayer/Statistics/StatisticsSettings.ui \
    scenarist-desktop/UserInterfaceLayer/Settings/LanguageDialog.ui \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchView.ui \
    scenarist-desktop/UserInterfaceLayer/Research/ResearchItemDialog.ui


RESOURCES += \
    scenarist-core/Resources/Resources.qrc

OTHER_FILES += \
    scenarist-desktop/settings_keys \
    scenarist-desktop/scenario_settings_keys \
    scenarist-desktop/logo.ico \
    scenarist-desktop/Scenarist.rc

win32:RC_FILE = scenarist-desktop/Scenarist.rc
macx {
    ICON = scenarist-desktop/logo.icns
    QMAKE_INFO_PLIST = scenarist-desktop/Info.plist
}