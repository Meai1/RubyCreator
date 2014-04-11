#include "RubyPlugin.h"

#include "editor/RubyCurrentDocumentFilter.h"
#include "editor/RubyEditorFactory.h"
#include "projectmanager/RubyProjectManager.h"
#include <coreplugin/icore.h>
#include <coreplugin/mimedatabase.h>
#include <QtPlugin>

namespace Ruby {

Plugin::Plugin()
{
}

Plugin::~Plugin()
{
    removeObject(m_factory);
}

bool Plugin::initialize(const QStringList&, QString* errorString)
{
    if (!Core::MimeDatabase::addMimeTypes(QLatin1String(":rubysupport/Ruby.mimetypes.xml"), errorString))
        return false;

    m_factory = new EditorFactory(this);
    addObject(m_factory);
    addAutoReleasedObject(new CurrentDocumentFilter);
    addAutoReleasedObject(new ProjectManager);

    return true;
}

void Plugin::extensionsInitialized()
{
}

}

Q_EXPORT_PLUGIN(Ruby::Plugin)

#include "RubyPlugin.moc"