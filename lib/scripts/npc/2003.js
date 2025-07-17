/*  Credits
	Author: Xterminator
	NPC Name: 		Robin
	Map(s): 		Maple Road : Snail Hunting Ground I (40000)
	Description: 	Beginner Helper
*/

/*	Overhaul By: LTurretv
    Translate By: LTurret
	NPC Alias Name: 羅賓
	Map Alias Name: 嫩寶狩獵場1
*/

var status = -1;
var mainmenu =
    "來問我關於你在旅行上的問題吧！\r\n#L0##b我該如何移動？#l\r\n#L1#我該如何攻擊怪物？#l\r\n#L2#我該如何撿起道具？#l\r\n#L3#當我葛屁時會怎樣？#l\r\n#L4#我什麼時候能轉職？#l\r\n#L5#告訴我關於這座島的事情！#l\r\n#L6#如何成為劍士？#l\r\n#L7#如何成為弓箭手？#l\r\n#L8#如何成為法師？#l\r\n#L9#如何成為盜賊？#l\r\n#L10#我該如何提升角色數值？ (S)#l\r\n#L11#我該如何檢查撿起來的道具？#l\r\n#L12#我該如何穿上裝備？#l\r\n#L13#我該如何檢查穿著的裝備？#l\r\n#L14#什麼是技能？ (K)#l\r\n#L15#我該如何前往維多利亞島？#l\r\n#L16#什麼是楓幣？#l#k";

function action(mode, type, selection) {
    if (mode == 1) {
        status++;
    } else {
        if (status == 2) {
            cm.sendNext(
                "每隻怪物都有自己的 HP，你可以透過武器或是技能來擊倒他們。理所當然的，越強的怪物你就需要更努力地將它們擊倒。\r\n\r\n這就是打倒怪物的方法。"
            );
        }
        status--;
    }
    if (status == 0) {
        cm.sendSimple(mainmenu);
    } else if (status == 1) {
        if (selection == 0) {
            // 我該如何移動？
            status = -1;
            cm.sendNext(
                "這就是移動的方法，使用鍵盤上的#b左鍵、右鍵#k在平面或是斜坡上到處移動。按下 #bAlt#k 來跳躍。有些特別的鞋子能提升你的移動速度或跳躍力。"
            );
        } else if (selection == 1) {
            // 我該如何攻擊怪物？
            cm.sendNext(
                "每隻怪物都有自己的 HP，你可以透過武器或是技能來擊倒他們。理所當然越強勁的怪物你就需要更努力地將它們擊倒。\r\n而這就是打倒怪物的方法。"
            );
        } else if (selection == 2) {
            // 我該如何撿起道具？
            status = 5;
            cm.sendNext("打倒怪物後，會掉落道具在地上。這時站在道具前面，按下 #bZ#k 或#b數字鍵盤上的0#k就可以撿起來了。這就是撿取道具的方法。");
        } else if (selection == 3) {
            // 當我葛屁時會怎樣？
            status = 8;
            cm.sendNext("想知道角色死掉會發生什麼嗎？當你的 HP 變成 0，就會變成幽靈。現場會出現墓碑而且你無法移動，不過仍然可以聊天。");
        } else if (selection == 4) {
            // 我什麼時候能轉職？
            status = 11;
            cm.sendNext("什麼時候可以轉職？哈哈哈，別急啊朋友。每個職業都有特定條件，通常等級 8 到 10 左右就可以了，所以要加油練等喔。");
        } else if (selection == 5) {
            // 告訴我關於這座島的事情！
            status = 14;
            cm.sendNext("想了解這座島嗎？這裡叫楓之島，漂浮在空中。由於在空中漂浮了一段時間，這裡沒有兇狠的怪物，是個非常和平、適合新手的地方！");
        } else if (selection == 6) {
            // 如何成為劍士？
            status = -1;
            cm.sendNext(
                "你想成為#b劍士#k？那我建議你前往維多利亞島，到名為#r勇士之村#k的地方，去找#b武術教官#k，他叫做#b佩里昂#k。他會教你如何成為真正的戰士。喔對了，非常重要的一點：你必須至少等級 10 才能轉職成戰士！"
            );
        } else if (selection == 7) {
            // 如何成為弓箭手？
            status = -1;
            cm.sendNext(
                "你想成為#b弓箭手#k？你必須前往維多利亞島，到名為#r弓箭手村赫麗娜斯（Henesys）#k的地方，找美麗的#b赫麗娜#k，讓她教你成為弓箭手的一切。喔對了，非常重要的一點：你必須至少等級 10 才能轉職成弓箭手！"
            );
        } else if (selection == 8) {
            // 如何成為法師？
            status = 19;
            cm.sendNext(
                "你想成為#b魔法師#k？那就得前往維多利亞島，到名為#r艾利尼亞（Ellinia）的魔法森林#k，在#k最上層有座魔法圖書館。裡頭你會見到所有魔法師的首領，#b漢斯#k，他會教你如何成為魔法師。"
            );
        } else if (selection == 9) {
            // 如何成為盜賊？
            status = -1;
            cm.sendNext(
                "你想成為#b盜賊#k？你必須前往維多利亞島，到名為#r墮落城市克林市（Kerning City）#k的地方，在城市的陰暗角落有個盜賊藏身處。裡面你會遇到#b黑暗領主達克魯#k，他會教你成為盜賊的一切。喔對了，非常重要的一點：你必須至少等級 10 才能轉職成盜賊！"
            );
        } else if (selection == 10) {
            // 我該如何提升角色數值？ (S)
            status = 22;
            cm.sendNext(
                "你想知道怎麼提升角色的能力值嗎？先按下 #bS#k 開啟能力視窗。每升一級會獲得 5 點能力值（AP），你可以自由分配到想要加強的屬性上，就這麼簡單。"
            );
        } else if (selection == 11) {
            // 我該如何檢查撿起來的道具？
            status = -1;
            cm.sendNext("想知道怎麼查看撿到的道具？當你打敗怪物，它會掉落道具在地上。你按下 #bZ#k 撿起來之後，道具就會進入你的道具欄。按 #bI#k 就可以查看。");
        } else if (selection == 12) {
            // 我該如何穿上裝備？
            status = -1;
            cm.sendNext(
                "你想知道怎麼穿裝備對吧？按下 #bI#k 打開道具欄，把滑鼠移到裝備上，雙擊就能穿上。如果無法穿，可能是等級或能力值不符合需求。你也可以開啟裝備欄（#bE#k）把裝備拖進去。要脫下裝備的話，就在裝備欄中雙擊它。"
            );
        } else if (selection == 13) {
            // 我該如何檢查穿著的裝備？
            status = -1;
            cm.sendNext("你想查看目前穿的裝備？按 #bE#k 開啟裝備欄，就能看到身上穿著什麼。要脫掉某件裝備，雙擊該裝備，它就會移到道具欄中。");
        } else if (selection == 14) {
            // 什麼是技能？ (K)
            status = -1;
            cm.sendNext(
                "在轉職之後會獲得特殊「技能」。這些技能是每個職業獨有的。你現在還沒到那個階段，所以還沒有技能，不過記得要查看技能的話，按下 #bK#k 開啟技能書，日後會用得上。"
            );
        } else if (selection == 15) {
            // 我該如何前往維多利亞島？
            status = -1;
            cm.sendNext(
                "你可以從楓之島的南港#b楓之港（Southperry）#k搭船前往維多利亞島的港口#b里斯港（Lith Harbor）#k。按下 #bW#k 查看世界地圖就能知道你目前在哪裡。找到楓之港那就是你該前往的地方。搭船需要一些楓幣，所以可能要先打些怪賺錢。"
            );
        } else if (selection == 16) {
            // 什麼是楓幣？
            status = -1;
            cm.sendNext("楓幣是楓之谷的貨幣，可以用來購買物品。你可以靠打怪、賣東西或完成任務來賺楓幣…");
        }
    } else if (status == 2) {
        // 我該如何攻擊怪物？
        cm.sendNextPrev("要攻擊怪物你得先裝備武器。裝備好後按下 #bCtrl#k 來進行攻擊。掌握好時機就能輕鬆打敗怪物。");
    } else if (status == 3) {
        // 我該如何攻擊怪物？
        cm.sendNextPrev("轉職之後你會獲得各種技能，而且可以把它們設為快捷鍵，使用起來更方便。如果是攻擊技能就不用再按 Ctrl 只要按設定的快捷鍵就好。");
    } else if (status == 4) {
        status = 0;
        cm.sendSimple(mainmenu);
    } else if (status == 5) {
        // 我該如何撿起道具？
        cm.sendNext("打倒怪物後會掉落道具在地上。這時站在道具前面按下 #bZ#k 或#b數字鍵盤上的0#k就可以撿起來了。\r\n這就是撿取道具的方法。");
    } else if (status == 6) {
        // 我該如何撿起道具？
        cm.sendNextPrev("不過要記住如果道具欄滿了，就不能再撿東西了。如果有不需要的東西就賣掉它吧，還可以賺點錢。完成轉職後道具欄還有機會擴充喔。");
    } else if (status == 7) {
        status = 0;
        cm.sendSimple(mainmenu);
    } else if (status == 8) {
        // 當我葛屁時會怎樣？
        cm.sendNext("想知道角色死掉會發生什麼嗎？當你的 HP 變成 0，就會變成幽靈。現場會出現墓碑而且你無法移動，不過仍然可以聊天。");
    } else if (status == 9) {
        // 當我葛屁時會怎樣？
        cm.sendNextPrev("如果是初心者死掉後其實沒損失。但如果已經轉職就不一樣了。死掉會損失部分經驗值，所以要盡量避免死亡。");
    } else if (status == 10) {
        status = 0;
        cm.sendSimple(mainmenu);
    } else if (status == 11) {
        // 我什麼時候能轉職？
        cm.sendNext("什麼時候可以轉職？哈哈哈，別急啊朋友。每個職業都有特定條件，通常等級 8 到 10 左右就可以了，所以要加油練等喔。");
    } else if (status == 12) {
        // 我什麼時候能轉職？
        cm.sendNextPrev(
            "不過升級並不是唯一條件，你還得提升與職業相關的能力值。例如戰士要有超過 35 的力量。你懂我的意思吧？記得要針對未來職業需要的能力來加點喔。"
        );
    } else if (status == 13) {
        status = 0;
        cm.sendSimple(mainmenu);
    } else if (status == 14) {
        // 告訴我關於這座島的事情！
        cm.sendNext("想了解這座島嗎？這裡叫楓之島，漂浮在空中。由於在空中漂浮了一段時間，這裡沒有兇狠的怪物，是個非常和平、適合新手的地方！");
    } else if (status == 15) {
        // 告訴我關於這座島的事情！
        cm.sendNextPrev(
            "不過如果你想成為強大的玩家那可別待太久，因為這裡無法轉職。在這座島下方有個叫做維多利亞的巨大的島嶼，那地方大得驚人完全不是這裡能比的。"
        );
    } else if (status == 16) {
        // 告訴我關於這座島的事情！
        cm.sendNextPrev("怎麼去維多利亞島？島的東邊有個港口叫#b楓之港#k，那裡有艘飛空船，船前站著一位船長，問問他吧。");
    } else if (status == 17) {
        // 告訴我關於這座島的事情！
        cm.sendNextPrev("喔對了！最後一件事，如果你不確定自己在哪裡，隨時按下 #bW#k。世界地圖就會跳出來，顯示你所在的位置。有它就不怕迷路了！");
    } else if (status == 18) {
        status = 0;
        cm.sendSimple(mainmenu);
    } else if (status == 19) {
        // 如何成為法師？
        cm.sendNext(
            "你想成為#b魔法師#k？那就得前往維多利亞島，到名為#r艾利尼亞（Ellinia）的魔法森林#k，在最上層有座魔法圖書館。裡頭你會見到所有魔法師的首領，#b漢斯#k，他會教你如何成為魔法師。"
        );
    } else if (status == 20) {
        // 如何成為法師？
        cm.sendNextPrev("喔對了，法師跟其他職業不同，法師只需要等級 8 就能轉職。不過雖然轉職早，要成為真正強大的魔法師可不容易，做決定前請三思而後行。");
    } else if (status == 21) {
        status = 0;
        cm.sendSimple(mainmenu);
    } else if (status == 22) {
        // 我該如何提升角色數值？ (S)
        cm.sendNext(
            "你想知道怎麼提升角色的能力值嗎？先按下 #bS#k 開啟能力視窗。每升一級會獲得 5 點能力值（AP），你可以自由分配到想要加強的屬性上，就這麼簡單。"
        );
    } else if (status == 23) {
        // 我該如何提升角色數值？ (S)
        cm.sendNextPrev(
            "把滑鼠移到各個能力值上可以看到簡單說明。例如劍士加力量、弓箭手加敏捷、法師加智力以及盜賊加幸運。但這些只是基本概念，你還需要好好思考如何分配能力值，發揮角色的最大潛力。"
        );
    } else if (status == 24) {
        status = 0;
        cm.sendSimple(mainmenu);
    }
}
