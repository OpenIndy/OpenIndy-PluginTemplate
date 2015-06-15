#include "p_factory.h"

using namespace oi;

/*!
 * \brief OiTemplatePlugin::OiTemplatePlugin
 * \param parent
 */
OiTemplatePlugin::OiTemplatePlugin(QObject *parent) : QObject(parent){

}

/*!
 * \brief OiTemplatePlugin::createSensors
 * \return
 */
QList<QPointer<Sensor> > OiTemplatePlugin::createSensors(){
    QList<QPointer<Sensor> > result;
    return result;
}

/*!
 * \brief OiTemplatePlugin::createFunctions
 * \return
 */
QList<QPointer<Function> > OiTemplatePlugin::createFunctions(){
    QList<QPointer<Function> > result;
    return result;
}

/*!
 * \brief OiTemplatePlugin::createNetworkAdjustments
 * \return
 */
QList<QPointer<NetworkAdjustment> > OiTemplatePlugin::createNetworkAdjustments(){
    QList<QPointer<NetworkAdjustment> > result;
    return result;
}

/*!
 * \brief OiTemplatePlugin::createSimulations
 * \return
 */
QList<QPointer<SimulationModel> > OiTemplatePlugin::createSimulations(){
    QList<QPointer<SimulationModel> > result;
    return result;
}

/*!
 * \brief OiTemplatePlugin::createTools
 * \return
 */
QList<QPointer<Tool> > OiTemplatePlugin::createTools(){
    QList<QPointer<Tool> > result;
    return result;
}

/*!
 * \brief OiTemplatePlugin::createSimpleAsciiExchanges
 * \return
 */
QList<QPointer<ExchangeSimpleAscii> > OiTemplatePlugin::createSimpleAsciiExchanges(){
    QList<QPointer<ExchangeSimpleAscii> > result;
    return result;
}

/*!
 * \brief OiTemplatePlugin::createDefinedFormatExchanges
 * \return
 */
QList<QPointer<ExchangeDefinedFormat> > OiTemplatePlugin::createDefinedFormatExchanges(){
    QList<QPointer<ExchangeDefinedFormat> > result;
    return result;
}

/*!
 * \brief OiTemplatePlugin::createSensor
 * \param name
 * \return
 */
QPointer<Sensor> OiTemplatePlugin::createSensor(const QString &name){
    return QPointer<Sensor>(NULL);
}

/*!
 * \brief OiTemplatePlugin::createFunction
 * \param name
 * \return
 */
QPointer<Function> OiTemplatePlugin::createFunction(const QString &name){
    return QPointer<Function>(NULL);
}

/*!
 * \brief OiTemplatePlugin::createNetworkAdjustment
 * \param name
 * \return
 */
QPointer<NetworkAdjustment> OiTemplatePlugin::createNetworkAdjustment(const QString &name){
    return QPointer<NetworkAdjustment>(NULL);
}

/*!
 * \brief OiTemplatePlugin::createSimulation
 * \param name
 * \return
 */
QPointer<SimulationModel> OiTemplatePlugin::createSimulation(const QString &name){
    return QPointer<SimulationModel>(NULL);
}

/*!
 * \brief OiTemplatePlugin::createTool
 * \param name
 * \return
 */
QPointer<Tool> OiTemplatePlugin::createTool(const QString &name){
    return QPointer<Tool>(NULL);
}

/*!
 * \brief OiTemplatePlugin::createSimpleAsciiExchange
 * \param name
 * \return
 */
QPointer<ExchangeSimpleAscii> OiTemplatePlugin::createSimpleAsciiExchange(const QString &name){
    return QPointer<ExchangeSimpleAscii>(NULL);
}

/*!
 * \brief OiTemplatePlugin::createDefinedFormatExchange
 * \param name
 * \return
 */
QPointer<ExchangeDefinedFormat> OiTemplatePlugin::createDefinedFormatExchange(const QString &name){
    return QPointer<ExchangeDefinedFormat>(NULL);
}
