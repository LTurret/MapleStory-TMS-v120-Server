var Message = new Array("遇到不能點技能/能力值/不能進傳點/不能點NPC，請在對話框打 @ea");

var setupTask;

function init() {
    scheduleNew();
}

function scheduleNew() {
    setupTask = em.schedule("start", 300000);
}

function cancelSchedule() {
    setupTask.cancel(false);
}

function start() {
    scheduleNew();
    em.broadcastYellowMsg("[楓之谷幫助]" + Message[Math.floor(Math.random() * Message.length)]);
}
