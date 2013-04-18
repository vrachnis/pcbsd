TEMPLATE	= app
LANGUAGE	= C++
LIBS	+= -lQtSolutions_SingleApplication-head

CONFIG	+= qt warn_on release

HEADERS	+= lifePreserverMain.h \
	lifePreserverWelcome.h \
	lifePreserverWizard.h \
	lifePreserverSettings.h \
	lifePreserverRestore.h \
	lifePreserverRestoreProgress.h \
	lifePreserverListbackups.h \
	lifePreserverUserExclude.h \
	preserver.h

SOURCES	+= main.cpp \
	lifePreserverMain.cpp \
	lifePreserverWelcome.cpp \
	lifePreserverWizard.cpp \
	lifePreserverSettings.cpp \
	lifePreserverRestore.cpp \
	lifePreserverRestoreProgress.cpp \
	lifePreserverListBackups.cpp \
	lifePreserverUserExclude.cpp \
	preserver.cpp

RESOURCES += lPreserve.qrc

FORMS	= lifePreserverMain.ui \
	lifePreserverWelcome.ui \
	lifePreserverWizard.ui \
	lifePreserverSettings.ui \
	lifePreserverRestore.ui \
	lifePreserverRestoreProgress.ui \
	lifePreserverUserExclude.ui \
	lifePreserverListBackups.ui

TRANSLATIONS = LifePreserver_en_US.ts 

TARGET=life-preserver
target.path=/usr/local/bin

scripts.path=/usr/local/share/lifePreserver/scripts
scripts.files=scripts/setup-ssh-keys.sh \
	scripts/check-backups.sh \
	scripts/start-backup.sh \
	scripts/functions.sh \
	scripts/backup-rsync.sh \
	scripts/restore-rsync.sh \
	scripts/list-backup-rsync.sh \
	scripts/kill-backup.sh

images.path=/usr/local/share/lifePreserver/images/
images.files=images/lifepreserver.png

conf.path=/usr/local/share/lifePreserver/conf
conf.files=conf/*

desktop.path=/usr/local/share/applications
desktop.files=lifepreserver.desktop

desktopperm.path=/usr/local/share/applications/
desktopperm.extra=chmod 644 /usr/local/share/applications/lifepreserver.desktop

dotrans.path=/usr/local/share/lifePreserver/i18n/
dotrans.extra=cd i18n && lrelease-qt4 -nounfinished *.ts && cp *.qm /usr/local/share/lifePreserver/i18n/

INSTALLS += target scripts conf dotrans images

TRANSLATIONS =  i18n/LifePreserver_af.ts \
		i18n/LifePreserver_ar.ts \
		i18n/LifePreserver_az.ts \
		i18n/LifePreserver_bg.ts \
		i18n/LifePreserver_bn.ts \
		i18n/LifePreserver_bs.ts \
		i18n/LifePreserver_ca.ts \
		i18n/LifePreserver_cs.ts \
		i18n/LifePreserver_cy.ts \
		i18n/LifePreserver_da.ts \
		i18n/LifePreserver_de.ts \
		i18n/LifePreserver_el.ts \
		i18n/LifePreserver_en_US.ts \
		i18n/LifePreserver_en_GB.ts \
		i18n/LifePreserver_en_ZA.ts \
		i18n/LifePreserver_es.ts \
		i18n/LifePreserver_et.ts \
		i18n/LifePreserver_eu.ts \
		i18n/LifePreserver_fa.ts \
		i18n/LifePreserver_fi.ts \
		i18n/LifePreserver_fr.ts \
		i18n/LifePreserver_fr_CA.ts \
		i18n/LifePreserver_fur.ts \
		i18n/LifePreserver_gl.ts \
		i18n/LifePreserver_he.ts \
		i18n/LifePreserver_hi.ts \
		i18n/LifePreserver_hr.ts \
		i18n/LifePreserver_hu.ts \
		i18n/LifePreserver_id.ts \
		i18n/LifePreserver_is.ts \
		i18n/LifePreserver_it.ts \
		i18n/LifePreserver_ja.ts \
		i18n/LifePreserver_ka.ts \
		i18n/LifePreserver_ko.ts \
		i18n/LifePreserver_lt.ts \
		i18n/LifePreserver_lv.ts \
		i18n/LifePreserver_mk.ts \
		i18n/LifePreserver_mn.ts \
		i18n/LifePreserver_ms.ts \
		i18n/LifePreserver_mt.ts \
		i18n/LifePreserver_nb.ts \
		i18n/LifePreserver_ne.ts \
		i18n/LifePreserver_nl.ts \
		i18n/LifePreserver_pa.ts \
		i18n/LifePreserver_pl.ts \
		i18n/LifePreserver_pt.ts \
		i18n/LifePreserver_pt_BR.ts \
		i18n/LifePreserver_ro.ts \
		i18n/LifePreserver_ru.ts \
		i18n/LifePreserver_sk.ts \
		i18n/LifePreserver_sl.ts \
		i18n/LifePreserver_sr.ts \
		i18n/LifePreserver_sv.ts \
		i18n/LifePreserver_sw.ts \
		i18n/LifePreserver_ta.ts \
		i18n/LifePreserver_tg.ts \
		i18n/LifePreserver_th.ts \
		i18n/LifePreserver_tr.ts \
		i18n/LifePreserver_uk.ts \
		i18n/LifePreserver_uz.ts \
		i18n/LifePreserver_vi.ts \
		i18n/LifePreserver_zh_CN.ts \
		i18n/LifePreserver_zh_HK.ts \
		i18n/LifePreserver_zh_TW.ts \
		i18n/LifePreserver_zu.ts

QMAKE_LIBDIR = /usr/local/lib/qt4 /usr/local/lib