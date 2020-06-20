<script type="text/javascript" src="https://cdn.bootcss.com/vue/2.0.5/vue.min.js"></script> 
<script type="text/javascript" src="dist/botui.min.js"></script> 
<script type="text/javascript"> 
    var botui = BotUI('home-demo'); 
 
    botui.message.add({ 
      content: '大家好，我是千颂伊！' 
    }).then(function () { 
      return botui.message.add({ 
        delay: 1500, 
        content: '![千颂伊](http://img3.duitang.com/uploads/blog/201402/15/20140215120608_BzmRN.gif)' 
      }); 
    }).then(function () { 
      return botui.action.button({ 
        delay: 1000, 
        action: [{ 
          text: '继续聊 💕', 
          value: 'sure' 
        }, { 
          text: '下回聊 💔', 
          value: 'skip' 
        }] 
      }); 
    }).then(function (res) { 
      if(res.value == 'sure') { 
        tutorial(); 
      } 
      if(res.value == 'skip') { 
        end(); 
      } 
    }); 
 
    var tutorial = function () { 
      botui.message.add({ 
        delay: 1000, 
        content: "太棒了，让我们简单互动一下吧。" 
      }).then(function () { 
        return botui.message.add({ 
          delay: 1000, 
          content: '请问我男票是谁？（输入名字后按回车键！）' 
        }); 
      }).then(function () { 
        return botui.action.text({ 
          delay: 800, 
          action: { 
            value: '都敏俊', 
            placeholder: '千颂伊的男朋友' 
          } 
        }); 
      }).then(function (res) { 
        return botui.message.bot({ 
          delay: 500, 
          content: '没错，就是' + res.value + '！' 
        }); 
      }).then(function (res) { 
        return botui.message.bot({ 
          delay: 1400, 
          content: '별에서 온 그대 ![合影](http://www.hanyouwang.com/uploads/2014/0303/20140303032047599.jpg)' 
        }); 
      }).then(function (res) { 
        return botui.message.add({ 
          delay: 1200, 
          type: 'embed', 
          content: 'http://player.youku.com/embed/XNjc4ODY5NzY4' 
        }); 
      }).then(function (res) { 
        return botui.message.bot({ 
          delay: 2500, 
          content: '祝天下有情人终成眷属！' 
        }); 
      }).then(function (res) { 
        return botui.message.bot({ 
          delay: 3888, 
          content: '我为BotUI带盐（注意：vue.js为2.0.5）' 
        }); 
      }).then(end); 
    }; 
 
    var end = function () { 
      botui.message.add({ 
        delay: 3888, 
        content: '!(book) [帮助文档](https:///docs.botui.org)，查看 [示例](https:///examples.botui.org) 或 [点击浏览代码](https://github.com/moinism/botui)' 
      }); 
    }; 
</script>