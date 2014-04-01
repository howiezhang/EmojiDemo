EmojiDemo
=========

  最近做项目遇到了Emoji的问题，正好之前在IOS上也做过类似的方案，就整理了一下放在这里，Android端的源代码出处在此：https://github.com/rockerhieu/emojicon。
ios的过了很久，出处忘了，感谢前辈们的努力。

Emoji主要的问题是
1.需要在Android系统上显示表情
2.需要能再Mysql数据库中能插入表情符号

MYSQL 5.5之前，UTF8编码之支持1-3个字节，从MYSQL5.5开始，可以支持4个字节UTF编码，而emoji得编码，需要4个字节以上，所以带emoji表情的字符串，在MYSQL5.5以前，插入数据库会失败。

基本的原理是将emoji的UNICODE码，转换成特殊的英文单词":xxx:" ,例如，U+1F604这个表情会转成":smile:",具体的映射表请看这里http://www.emoji-cheat-sheet.com/		

