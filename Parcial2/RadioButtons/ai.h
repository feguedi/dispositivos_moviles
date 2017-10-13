#ifndef AI_H
#define AI_H

#include <QObject>

class Ai : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString message READ message WRITE setMessage NOTIFY messageChanged)
    Q_PROPERTY(QString acuatico READ acuatico WRITE setAcuatico NOTIFY acuaticoChanged)
    Q_PROPERTY(QString volador READ volador WRITE setVolador NOTIFY voladorChanged)
    Q_PROPERTY(QString terrestre READ terrestre WRITE setTerrestre NOTIFY terrestreChanged)
    Q_PROPERTY(QString pers READ pers WRITE setPers NOTIFY persChanged)

public:
    explicit Ai(QObject *parent = 0);
    QString message() { return msg; }
    QString acuatico() { return ac; }
    QString volador() { return vo; }
    QString terrestre() { return te; }
    // void setMessage(QString str);
    Q_INVOKABLE QString setMessage(QString ac, QString vol, QString ter);
    Q_INVOKABLE QString setPers(QString ac, QString vol, QString ter);

signals:
    void acuaticoChanged();
    void voladorChanged();
    void terrestreChanged();
    void messageChanged();

public slots:

private:
    QString msg;
    QString ac;
    QString vo;
    QString te;
};

#endif // AI_H
