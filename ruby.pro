isEmpty(QTC_SOURCE):error(QTC_SOURCE must be set)
isEmpty(QTC_BUILD):error(QTC_BUILD must be set)
IDE_BUILD_TREE=$$QTC_BUILD
QTC_PLUGIN_NAME = Ruby
QTC_PLUGIN_DEPENDS = coreplugin texteditor projectexplorer
include($$QTC_SOURCE/src/qtcreatorplugin.pri)

SOURCES += RubyPlugin.cpp \
    editor/RubyAutoCompleter.cpp \
    editor/RubyCodeModel.cpp \
    editor/RubyCodeStylePreferencesFactory.cpp \
    editor/RubyCompletionAssist.cpp \
    editor/RubyEditor.cpp \
    editor/RubyEditorFactory.cpp \
    editor/RubyEditorWidget.cpp \
    editor/RubyHighlighter.cpp \
    editor/RubyIndenter.cpp \
    editor/RubyScanner.cpp \
    editor/RubySymbolFilter.cpp \
    projectmanager/RubyProject.cpp \
    projectmanager/RubyProjectManager.cpp \
    projectmanager/RubyProjectWizard.cpp

HEADERS += RubyPlugin.h \
    RubyConstants.h \
    editor/RubyAutoCompleter.h \
    editor/RubyCodeModel.h \
    editor/RubyCodeStylePreferencesFactory.h \
    editor/RubyCompletionAssist.h \
    editor/RubyEditor.h \
    editor/RubyEditorFactory.h \
    editor/RubyEditorWidget.h \
    editor/RubyHighlighter.h \
    editor/RubyIndenter.h \
    editor/RubyScanner.h \
    editor/RubySnippetProvider.h \
    editor/RubySymbol.h \
    editor/RubySymbolFilter.h \
    editor/SourceCodeStream.h \
    projectmanager/RubyProject.h \
    projectmanager/RubyProjectManager.h \
    projectmanager/RubyProjectNode.h \
    projectmanager/RubyProjectWizard.h

RESOURCES += \
    Ruby.qrc

OTHER_FILES += \
    Readme.md
