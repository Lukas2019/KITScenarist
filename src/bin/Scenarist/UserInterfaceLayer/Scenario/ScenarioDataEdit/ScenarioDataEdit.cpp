#include "ScenarioDataEdit.h"
#include "ui_ScenarioDataEdit.h"

using UserInterface::ScenarioDataEdit;


ScenarioDataEdit::ScenarioDataEdit(QWidget* _parent) :
	QWidget(_parent),
	ui(new Ui::ScenarioDataEdit)
{
	ui->setupUi(this);

	initView();
	initConnections();
	initStyleSheet();
}

ScenarioDataEdit::~ScenarioDataEdit()
{
	delete ui;
}

QWidget* ScenarioDataEdit::toolbar() const
{
	return ui->topEmptyLabel;
}

void ScenarioDataEdit::clear()
{
	m_sourceName.clear();
	m_sourceSourceSynopsis = QTextDocument().toHtml();

	ui->name->clear();
	ui->sourceSynopsis->clear();
	ui->fromScenarioSynopsis->clear();
	ui->isSourceSynopsis->setChecked(true);
	ui->synopsisStack->setCurrentWidget(ui->sourceSynopsisPage);

	ui->name->setFocus();
}

QString ScenarioDataEdit::scenarioName() const
{
	return ui->name->text();
}

void ScenarioDataEdit::setScenarioName(const QString& _name)
{
	m_sourceName = _name;
	ui->name->setText(_name);
}

QString ScenarioDataEdit::scenarioSynopsis() const
{
	return ui->sourceSynopsis->toHtml();
}

void ScenarioDataEdit::setScenarioSynopsis(const QString& _synopsis)
{
	//
	// Сформируем значение синопсиса, для корректности последующих сравнений
	//
	QTextDocument synopsisDoc;
	synopsisDoc.setHtml(_synopsis);
	m_sourceSourceSynopsis = synopsisDoc.toHtml();

	ui->sourceSynopsis->setHtml(_synopsis);
}

void ScenarioDataEdit::setScenarioSynopsisFromScenes(const QString& _synopsis)
{
	ui->fromScenarioSynopsis->setHtml(_synopsis);
}

void ScenarioDataEdit::aboutNameChanged()
{
	if (ui->name->text() != m_sourceName) {
		emit scenarioNameChanged();
	}
}

void ScenarioDataEdit::aboutSourceSynopsisChanged()
{
	if (ui->sourceSynopsis->toHtml() != m_sourceSourceSynopsis) {
		emit scenarioSynopsisChanged();
	}
}

void ScenarioDataEdit::aboutCurrentSynopsisChanged()
{
	if (ui->isSourceSynopsis->isChecked()) {
		ui->synopsisStack->setCurrentWidget(ui->sourceSynopsisPage);
	} else {
		ui->synopsisStack->setCurrentWidget(ui->fromScenarioSynopsisPage);
	}
}

void ScenarioDataEdit::initView()
{
	clear();
}

void ScenarioDataEdit::initConnections()
{
	connect(ui->isSourceSynopsis, SIGNAL(toggled(bool)), this, SLOT(aboutCurrentSynopsisChanged()));

	connect(ui->name, SIGNAL(textChanged(QString)), this, SLOT(aboutNameChanged()));
	connect(ui->sourceSynopsis, SIGNAL(textChanged()), this, SLOT(aboutSourceSynopsisChanged()));
	connect(ui->isFromScenarioSynopsis, SIGNAL(clicked()), this, SIGNAL(buildSynopsisFromScenes()));
}

void ScenarioDataEdit::initStyleSheet()
{
	ui->topEmptyLabel->setProperty("inTopPanel", true);
	ui->topEmptyLabel->setProperty("topPanelTopBordered", true);
	ui->topEmptyLabel->setProperty("topPanelRightBordered", true);

	ui->mainContainer->setProperty("mainContainer", true);
}