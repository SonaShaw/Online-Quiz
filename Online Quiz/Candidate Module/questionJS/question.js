function Quiz(questions) {
    this.score = 0;
    this.questions = questions;
    this.questionIndex = 0;
}
 
Quiz.prototype.getQuestionIndex = function() {
    return this.questions[this.questionIndex];
}
 
Quiz.prototype.guess = function(answer) {
    if(this.getQuestionIndex().isCorrectAnswer(answer)) {
        this.score++;
    } 
    this.questionIndex++;
}
 
Quiz.prototype.isEnded = function() {
    return this.questionIndex === this.questions.length;
}
 
 
function Question(text, choices, answer) {
    this.text = text;
    this.choices = choices;
    this.answer = answer;
}
 
Question.prototype.isCorrectAnswer = function(choice) {
    return this.answer === choice;
}
 
 
function populate() {
    if(quiz.isEnded()) {
        showScores();
    }
    else {
        // show question
        var element = document.getElementById("question");
        element.innerHTML = quiz.getQuestionIndex().text;
 
        // show options
        var choices = quiz.getQuestionIndex().choices;
        for(var i = 0; i < choices.length; i++) {
            var element = document.getElementById("choice" + i);
            element.innerHTML = choices[i];
            guess("btn" + i, choices[i]);
        }
 
        showProgress();
    }
};
 
function guess(id, guess) {
    var button = document.getElementById(id);
    button.onclick = function() {
        quiz.guess(guess);
        populate();
    }
};
 
 
function showProgress() {
    var currentQuestionNumber = quiz.questionIndex + 1;
    var element = document.getElementById("progress");
    element.innerHTML = "Question " + currentQuestionNumber + " of " + quiz.questions.length;
};
 
function showScores() {
    var gameOverHTML = "<h1>Result</h1>";
    gameOverHTML += "<h2 id='score'> Your scores: " + quiz.score + "</h2>";
    var element = document.getElementById("quiz");
    element.innerHTML = gameOverHTML;
};
 
// create questions here
var questions = [
    new Question("When a customer returns goods, the account to be debited is:", ["Revenue Account","Cash Account","Return Inward Account","Return Outward Account"], "Return Inward Account"),
    new Question("The document sent to a customer when s/he returns the goods sold to her/him is called a:", ["Credit note","Debit note","Invoice","Promissory note"], "Credit note"),
    new Question("Which of the following statement is most appropriate?", ["Adjusting entries affect the balance sheet only","Adjusting entries affect the income statement only","Adjusting entries affect both the balance sheet and the income statement","Adjusting entries may affect two or more accounts within the balance sheet or two or more accounts within the income statement but the adjustment(s) cannot affect both the balance sheet and the income statement simultaneously"], "Adjusting entries affect both the balance sheet and the income statement"),
	new Question("Rs. 1,500 spent on repairs before using a second-hand car purchased recently is a:", ["Capital expenditure","Revenue expenditure","Prepaid revenue expenditure ","None of the above"], "Capital expenditure"),
	new Question("Adjusting entry for outstanding rent is:", ["Outstanding Rent Account ………. Dr.  To Rent Account","Outstanding Rent Account ………. Dr.  To Cash Account","Rent Account ………. Dr.  To Accounts Payable Account","Rent Account ………. Dr.  To Outstanding Rent Account"], "Rent Account ………. Dr.  To Outstanding Rent Account"),
	new Question("The owner of the business takes Rs. 100 in cash and goods costing Rs. 200 for his family. The journal entry for this transaction is:", ["Drawings Account ………. Dr.   To Cash Account   To Purchase Account","Drawings Account   To Cash Account   To Goods Account","Drawings Account ………. Dr.   To Cash Account   To Sales Account","Cash Account ………. Dr.  Purchase Account ………. Dr.   To Drawings Account"], "Drawings Account ………. Dr.   To Cash Account   To Purchase Account"),
	new Question("Commission received in advance is a:", ["Personal Account","Nominal Account ","Real Account ","None of the above"], "Personal Account"),
	new Question("The correct entry for the sale of goods on credit is:", ["Accounts receivable ………. Dr.   To Profit & Loss Account","Cash Account ………. Dr.  To Sales Account ","Accounts Receivable ………. Dr.   To Asset Account ","Accounts Receivable ………. Dr.  To Sales Account"], "Accounts Receivable ………. Dr.  To Sales Account")
];
 
// create quiz
var quiz = new Quiz(questions);
 
// display quiz
populate();