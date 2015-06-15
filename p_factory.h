#ifndef P_FACTORY_H
#define P_FACTORY_H

#include <QtGlobal>
#include <QObject>

#include "plugin.h"

using namespace oi;

class OiTemplatePlugin : public QObject, Plugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "de.openIndy.Plugin.v001" FILE "metaInfo.json")
    Q_INTERFACES(Plugin)
    
public:
    OiTemplatePlugin(QObject *parent = 0);

    //##########################################################
    //create instances of all available plugin types in a plugin
    //##########################################################

    QList<QPointer<Sensor> > createSensors();
    QList<QPointer<Function> > createFunctions();
    QList<QPointer<NetworkAdjustment> > createNetworkAdjustments();
    QList<QPointer<SimulationModel> > createSimulations();
    QList<QPointer<Tool> > createTools();
    QList<QPointer<ExchangeSimpleAscii> > createSimpleAsciiExchanges();
    QList<QPointer<ExchangeDefinedFormat> > createDefinedFormatExchanges();

    //###################################################
    //create instances of a plugin type with a given name
    //###################################################

    QPointer<Sensor> createSensor(const QString &name);
    QPointer<Function> createFunction(const QString &name);
    QPointer<NetworkAdjustment> createNetworkAdjustment(const QString &name);
    QPointer<SimulationModel> createSimulation(const QString &name);
    QPointer<Tool> createTool(const QString &name);
    QPointer<ExchangeSimpleAscii> createSimpleAsciiExchange(const QString &name);
    QPointer<ExchangeDefinedFormat> createDefinedFormatExchange(const QString &name);

};

#endif // P_FACTORY_H
