#ifndef OITESTTESTFIT_H
#define OITESTTESTFIT_H

#include <QObject>
#include <QDebug>
#include "AutoTest.h"

#include "testfit.h"

class OiTestTestFit : public QObject
{
    Q_OBJECT

private slots:
    void initTestCase();
    void testTestFit();
    void cleanupTestCase();
};

DECLARE_TEST(OiTestTestFit)
#endif // OITESTTESTFIT_H
