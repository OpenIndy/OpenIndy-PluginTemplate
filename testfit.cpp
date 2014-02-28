#include "testfit.h"

testfit::testfit()
{
}

QList<InputParams> testfit::getNeededElements(){
    QList<InputParams> result;
    InputParams param1;
    param1.index = 0;
    param1.description = "Select a line to calculate the intersection.";
    param1.infinite = false;
    param1.typeOfElement = Configuration::eLineElement;
    result.append(param1);
    InputParams param2;
    param2.index = 1;
    param2.description = "Select a plane to calculate the intersection.";
    param2.infinite = false;
    param2.typeOfElement = Configuration::ePlaneElement;
    result.append(param2);
    return result;
}

QList<Configuration::FeatureTypes> testfit::applicableFor(){
    QList<Configuration::FeatureTypes> result;
    result.append(Configuration::ePointFeature);
    result.append(Configuration::eSphereFeature);
    return result;
}

PluginMetaData* testfit::getMetaData()
{
  PluginMetaData *p=new PluginMetaData();

  p->author = "kern";

  return p;
}

bool testfit::exec(Point& p)
{

  return false;
}
