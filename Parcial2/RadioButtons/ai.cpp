#include "ai.h"
#include <QDebug>

Ai::Ai(QObject *parent) : QObject(parent), msg("No has seleccionado algún animal")
{
}

QString Ai::setMessage(QString ac, QString vol, QString ter)
{
    if()
    {

    }
    return msg;
}

QString Ai::setPers(QString ac, QString vol, QString ter)
{
    if(ac == 0 && vol == 0 && ter == 0)
    {
        return "";
    }
    else
    {
        switch (ac) {
        case 0:
            switch (vol) {
            case 0:
                switch (ter) {
                case 1:
                    return "Fuerte";
                    break;
                case 2:
                    return "Fluido";
                    break;
                case 3:
                    return "Noble";
                    break;
                default:
                    break;
                }
                break;
            case 1:
                switch (ter) {
                case 1:
                    return "Fuerte";
                    break;
                case 2:
                    return "Fuerte y fluido";
                    break;
                case 3:
                    return "Fuerte y noble";
                    break;
                default:
                    break;
                }
                break;
            case 2:
                switch (ter) {
                case 1:
                    return "Fuerte y fluido";
                    break;
                case 2:
                    return "Fluido";
                    break;
                case 3:
                    return "Fluido y noble";
                    break;
                default:
                    break;
                }
                break;
            case 3:

                break;
            default:
                break;
            }
            break;
        case 1:
            switch (vol) {
            case 1:

                break;
            case 2:

                break;
            case 3:

                break;
            default:
                break;
            }
            break;
        case 2:

            break;
        case 3:

            break;
        default:
            break;
        }
    }
}
