#include <qtranslator.h>
#include <qlocale.h>
#include <qtsingleapplication.h>
#include <QDebug>
#include <QFile>
#include <unistd.h>
#include <sys/types.h>

#include "LPTray.h"
//#include "../config.h"

#ifndef PREFIX
#define PREFIX QString("/usr/local/")
#endif

int main( int argc, char ** argv )
{
    QtSingleApplication a(argc, argv);
    if (a.isRunning())
      return !(a.sendMessage("show"));

    //Check whether running as root
    if( getuid() == 0){
      qDebug() << "Life-Preserver Tray must not be started as root!";
      return 1;
    }
    
    QTranslator translator;
    QLocale mylocale;
    QString langCode = mylocale.name();
    if ( ! QFile::exists( PREFIX + "/share/lifePreserver/i18n/LifePreserverTray_" + langCode + ".qm" ) )
      langCode.truncate(langCode.indexOf("_"));
    translator.load( QString("LifePreserverTray_") + langCode, PREFIX + "/share/lifePreserver/i18n/" );
    a.installTranslator( &translator );
    qDebug() << "Locale:" << langCode;

    LPTray *w = new LPTray(); 
    w->show();

    QObject::connect( &a, SIGNAL( messageReceived(const QString &) ), w, SLOT( slotSingleInstance() ) );
    int ret = -1;
    while( w->isVisible() ){
      //Make sure the application does not exit while the tray is still open
      ret = a.exec();
    }
    return ret;
}
