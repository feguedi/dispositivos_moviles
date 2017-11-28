#ifndef THREADMANAGER_H
#define THREADMANAGER_H

#include <QObject>

class ThreadManager : public QObject
{
    Q_OBJECT
public:
    explicit ThreadManager(QObject *parent = nullptr);

signals:

public slots:
};

#endif // THREADMANAGER_H