#ifndef TESTFIT_H
#define TESTFIT_H

#include "pi_fitfunction.h"

class testfit : public FitFunction
{
  public:
    testfit();
    QList<InputParams> getNeededElements();
    QList<Configuration::FeatureTypes> applicableFor();
    PluginMetaData* getMetaData() ;
    bool exec(Point& p);
};

#endif // TESTFIT_H
