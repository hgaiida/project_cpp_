#ifndef STATJ_H
#define STATJ_H


#include <QDialog>

namespace Ui {
class statj;
}

class statj : public QDialog
{
    Q_OBJECT

public:
    explicit statj(QWidget *parent = nullptr);
    ~statj();
    QList<qreal> stat_j();
      QList <QString> stat_j_nom();//hh
private:
    Ui::statj *ui;
};

#endif // STATJ_H
