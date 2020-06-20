<script type="text/javascript" src="https://cdn.bootcss.com/vue/2.0.5/vue.min.js"></script> 
<script type="text/javascript" src="dist/botui.min.js"></script> 
<script type="text/javascript"> 
    var botui = BotUI('home-demo'); 
 
    botui.message.add({ 
      content: 'hi，这里是Nana⚝Nana' 
    }).then(function () { 
      return botui.message.add({ 
        delay: 1500, 
        content: '![Nana⚝Nana](https://i.ibb.co/F4gtKhV/6b3044014a90f603597359a83712b31bb251ed56.jpg)' 
      }); 
    }).then(function () { 
      return botui.action.button({ 
        delay: 1000, 
        action: [{ 
          text: '聊一会~ 💕', 
          value: 'sure' 
        }, { 
          text: '不聊了吧.. 💔', 
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
        content: "感谢你能继续跟我聊下去" 
      }).then(function () { 
      return botui.action.button({ 
        delay: 1000, 
        action: [{ 
          text: '名字的由来？ ', 
          value: 'sure' 
        }] 
      }); 
    }).then(function (res) { 
      if(res.value == 'sure') { 
        tutorial(); 
      } 
    }); 
	var tutorial = function () { 
      botui.message.add({ 
        delay: 1000, 
        content: "这是个好问题" 
    }).then(function (res) { 
        return botui.message.bot({ 
          delay: 1400, 
          content: 'Kagura Nana!(https://i0.hdslb.com/bfs/archive/42eb1973a23ee33070a1db6c48b0d193e80c7849.jpg@320w_200h.webp)' 
        }); 
	}).then(function (res) { 
        return botui.message.bot({ 
          delay: 1400, 
          content: '因为之前过于喜爱狗妈，于是steam改名叫Kagura Nana' 
        }); 	
    }).then(function (res) { 
        return botui.message.bot({ 
          delay: 1400, 
          content: '后来因为我实在是太懒，直接删掉了kagura，并修改了一下' 
        }); 	
    }; 
    }).then(function () { 
        return botui.action.button({ 
          delay: 1000, 
          action: [{ 
          text: '为什么要做这个网站', 
          value: 'sure' 
        }, { 
          text: '好的，拜拜~', 
          value: 'skip' 
        }] 
      }); 
	}).then(function (res) { 
      if(res.value == 'sure') { 
        tutorial(); 
      } 
      if(res.value == 'skip') { 
	  }).then(function (res) { 
        return botui.message.bot({ 
          delay: 1400, 
          content: '逛网站无聊了记得来找我哦~' 
        }); 	
        }).then(end); 
      } 
    });
	
    var end = function () { 
      botui.message.add({ 
        delay: 3888, 
        content: '!(book) [帮助文档](https:///docs.botui.org)，查看 [示例](https:///examples.botui.org) 或 [点击浏览代码](https://github.com/moinism/botui)' 
      }); 
    }; 
</script>