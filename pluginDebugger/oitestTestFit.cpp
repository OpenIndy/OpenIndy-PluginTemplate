#include "oitestTestFit.h"

void OiTestTestFit::initTestCase(){
    qDebug() << "********* Start testing of OiTestTestFit *********";
}

void OiTestTestFit::testTestFit(){

    qDebug() << "set testFit";

    testfit* fit = new testfit();


    QVERIFY2(fit->getMetaData()->author=="kern", "failed");
}

void OiTestTestFit::cleanupTestCase(){
    qDebug()<<"********* Finished testing of OiTestTestFit *********";
}
