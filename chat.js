var botui = new BotUI("fogforest");
botui.message.bot({
    delay: 200,
    content: "Hi, there👋"
}).then(function() {
    return botui.message.bot({
        delay: 1000,
        content: "这里是 雾时之森"
    })
}).then(function() {
    return botui.message.bot({
        delay: 1000,
        content: "一个可爱的蓝孩子~"
    })
}).then(function() {
    return botui.action.button({
        delay: 1500,
        action: [{
            text: "然后呢？ 😃",
            value: "and"
        },
        {
            text: "少废话！ 🙄",
            value: "gg"
        }]
    })
}).then(function(res) {
    if (res.value == "and") {
        other()
    }
    if (res.value == "gg") {
        return botui.message.bot({
            delay: 1500,
            content: "![告辞](https://ae01.alicdn.com/kf/Hd33fe77ff56f48e4b988d6c4f9091551S.jpg)"
        })
    }
});
 
var other = function() {
    botui.message.bot({
        delay: 1500,
        content: "😘"
    }).then(function() {
        return botui.message.bot({
            delay: 1500,
            content: "主修的网络工程专业，是个即将毕业的大四狗"
        })
    }).then(function() {
        return botui.message.bot({
            delay: 1500,
            content: "略懂HTML/CSS/JavaScript/PHP，偶尔也折腾易语言、Python"
        })
    }).then(function() {
        return botui.message.bot({
            delay: 1500,
            content: "不过还是比较熟悉手机刷机、主机DIY与系统安装"
        })
    }).then(function() {
        return botui.message.bot({
            delay: 1500,
            content: "喜欢折腾，热爱折腾，目前正在计算机一道上探索中"
        })
    }).then(function() {
        return botui.action.button({
            delay: 1500,
            action: [{
                text: "为什么叫 雾时之森 呢？ 🤔",
                value: "next"
            }]
        })
    }).then(function(res) {
        return botui.message.bot({
            delay: 1500,
            content: "一次起昵称时偶然打出了这个名字，于是我就沿用了下来，嗯！"
        })
    }).then(function() {
        return botui.action.button({
            delay: 1500,
            action: [{
                text: "域名有什么含意吗？(ง •_•)ง",
                value: "next"
            }]
        })
    }).then(function(res) {
        return botui.message.bot({
            delay: 1500,
            content: "emmmmm，看备案信息你就知道了_(:з」∠)_"
        })
    }).then(function(res) {
        return botui.message.bot({
            delay: 1500,
            content: "那么，仔细看看我的博客吧？ ^_^"
        })
    });
}