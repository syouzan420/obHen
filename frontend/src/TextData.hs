module TextData (textData) where

import Data.Text (Text)

textData :: Text
textData = "init:\nようこそ。\n君が來るのを 待ってゐたよ。\nさあ この世界を 見て。\n;a_block.Anna.1_md_textA0 a_block.Tana.1_md_textT0 sm_0 cd_w sc_1 md_scene0\n\nmap0:\n*******************\n**************s****\n***A***************\n*******************\n*******************\n*******************\n********Y@*********\n****************C**\n*******************\n******B************\n*******************\n*******************\n*************g*****\n*******************\n\nobj0:\nA,Anna,live,,block,north\nB,Box,block,,move,north\nC,Conbiner,func tool tool tool,map1,enter,north\nY,Yoko,live,,block,north\nT,Tana,approach 20 3,,block,north\ng,Glasses,tool,,get,nodir\ns,Super,tool,,get,nodir\nG,SuperG,tool,,get,nodir\nm,Mask,tool,,get,nodir\nV,virus1,move 7,,block,north\nV,virus2,move 6,,block,north\nV,virus3,approach 5 5,,block,north\nr,rna1,tool,,get,nodir\nr,rna2,tool,,get,nodir\nr,rna3,tool,,get,nodir\nx,xVaccine,tool,,get,nodir\nZ,ZVaccine,shoot 4,,block,south\na,ame,tool,,get,nodir\nP,PCR,func tool tool,map3,enter,nodir\nb,ZBuster,tool,,get,nodir\nE,E,block,,block,nodir\nN,N,block,,block,nodir\nD,D,block,,block,nodir\n\nmap1:\n**********@\n***********\n*Cgs*=*G***\n***********\n******T****\n**********%\n\nobj1:\nT,Tana,live,,block,north\ng,Glasses,block,,block,nodir\ns,Super,block,,block,nodir\nG,SuperG,block,,block,nodir\nC,Conbiner,block,,block,nodir\n\nmap2:\n**********@\n***********\n*C*m*=*P***\n***********\n***********\n**********%\n\nobj2:\nC,Conbiner,block,,block,nodir\nm,Mask,block,,block,nodir\nP,PCR,block,,block,nodir\n\nmap3:\n**********@\n***********\n*P***=*x***\n***********\n*****T*****\n**********%\n\nobj3:\nT,Tana,live,,block,north\nP,PCR,block,,block,nodir\nx,xVaccine,block,,block,nodir\nb,ZBuster,tool,,get,nodir\n\nscene0:\n君が今までゐた世界とは ずいぶん違って見えるかな。\n・・・今 君の力が必要なんだ。\nある時から ここには $r變化-へんか といふものが なくなってしまった。\nそれに どんな意味があるのか。\nまづ この世界を歩いて 自分の目と$r感覺-かんかく で 確かめて欲しい。\n;a_block.Yoko.0_if_?pHave.Super_md.textYs_if_?pHave.Glasses_md.textYg_if_?pHave.SuperG_md.textYG_if_?pHave.Mask_md.textYM0_el_md.textY0 a_pushto.Box-Yoko.0_md_textYB a_attack.Box.3_co_Box-Mask a_block.Super.0_md_texts0 a_block.Glasses.0_md_textg0 a_block.SuperG.0_md_textG0 a_block.Conbiner.0_md_textC0\n\ntextSave:\n;save\nセーブしました\n\ntextBack:\nセーブをやめました\n\ntexts0:\nスーパー\n\ntextg0:\nメガネ\n\ntextG0:\nスーパーメガネ\n\ntextC0:\n結合器\n\ntextm0:\nマスク\n\ntextP0:\nPCR\n\ntextx0:\n$r遺傳子-いでんし $r修復-しゅうふく ワクチン\n\ntextY0:\n;sc_1\nどうか このあたりを 見てまはってくれないか。\n何か氣になるものがあったら 教へてほしい。\n\n\ntextY1:\n;sc_1\n結合器？。\nその結合器に なにか二つ ものを並べて 結合器を作動させると その二つが くっついて 何か別のものになるのか・・・。\n\ntextYs:\n;sc_1\nこれは 何だらうね？。\nスーパー？。\nよく分からないけど 何かといっしょに使ふのかな。\n\ntextYg:\n;sc_1\nメガネだね。\nそんなものが どうしてあるんだらう。\n\ntextYB:\n;sc_1\nなんの箱だらう これは？。\nたたいたら こはせるのかな？。\n\ntextYM0:\n;sc_1\nマスク？。\n結構きめが細かいっていふ $r不織布-ふしょくふ のマスクだね。\nスキマのひとつひとつは ウイルスの大きさの五十倍くらゐらしい・・・。\n\ntextYG:\n;sc_1\nスーパーメガネ？。\nメガネスーパーなら どこかで 聞いたことがあるけど・・・。\nこれをかけてみたら・・・今まで見えなかったものが 見えたりして・・・。\n・・・・・ 特になにも 變はらないな・・・。\nあっ！ メガネが消えた！。\n;cn p_virus1.7.4_virus2.14.9_virus3.4.8 a_attack.virus1.0_md_textV10 a_block.virus1.1_md_textV11 a_attack.virus2.0_md_textV20 a_block.virus2.1_md_textV21 a_attack.virus3.1_md_textV30 a_block.virus3.0_md_textV31\nなんだ あれは？。\n;d_block.Yoko a_block.Yoko.0_if_?pHave.Mask_md.textYM1_if_?counter.v1,1,v2,1,v3,1_md.textY3_el_md.textY2 ac_yoko\n\ntextY2:\n;sc_1\n今 確實に この世界に變化が來てゐる。\nこれは 僕の仮説なんだけれど・・・。\n君の居た世界では 多くの人が 教育によって。\n自分は 世界を變へていく力を持ってゐる といふことを 忘れさせられてきた。\n變化できない 固定された価値觀が ここの世界の變化を 止めてしまってゐたんだ。\n\ntextY3:\n;sc_1\n・・・さうか・・・ ウイルスたちが そんなことを・・・。\nたしか 君の居た世界で1976年に流行った 新型豚インフルエンザ も たくさんの$r嘘-うそ の$r宣傳-せんでん が流されて 有害なワクチンが アメリカ国民に大量$r投与-とうよ されたんだよね。\n;hl_https+//www.nikkei.com/article/DGXMZO60239830R10C20A6CR8000-1976\nその當事の人たちは 一部を除いて テレビが流す情報をすっかり $r鵜呑-うの みにしてしまった・・・。\n僕たちは 多かれ 少かれ 力を持った人たちに コントロールされてきたんだ。\n新聞やテレビなどのマス・メディアは そのための道具なんだよね。\nこの メディアの力で 僕らは 「世界は今 かうなってゐて 僕達一人では とてもその状況を變へられない」って 思ひこまされてゐるわけだ。\n;d_block.Yoko a_block.Yoko.0_md_textY4 ud_Conbiner.map2 ac_yoko2 a_block.Mask.0_md_textm0 a_block.PCR.0_md_textP0 a_block.xVaccine.0_md_textx0 d_block.Tana a_block.Tana.1_md_textT4\n\ntextY4:\n;sc_1\n長老なら 何か良い方法を知ってゐるかも・・・。\n\ntextYM1:\n;sc_1\nマスクだ。\nこれを装着すれば ウイルス$r感染-かんせん のリスクが減るって言はれてゐるけど・・・。\n\ntextY5:\n;sc_5\nうぁたっ・す・・けおぁ・・てsa)Fjsjfd9@&)(&@^!!(・・ぐあっ・・！。\n\ntextY6:\n;sc_5\nウッツ・・・。\nウ・・・・ぅ。\n・・・・・。\n;sc_1\n・・・た・・たすかった・・・。\n君のおかげだよ・・・。\n$r本當-ほんたう にありがたう・・・。\n;cn ac_yokoR if_?counter.annaR,1_md.textZ0_el_md.textY7 d_block.Yoko a_block.Yoko.0_md_textY7\n\ntextY7:\n;sc_1\nありがたう・・。\nあの子は・・・大丈夫だらうか・・・。\n\ntextV10:\n;sc_7\nいたた！。\nちょっと 話を聞いてくれよ！。\n\ntextV20:\n;sc_7\nうわ！。やめて〜！。\nいたいよ〜！。\n\ntextV11:\n;sc_7\nぼくらは 通常 ウイルスって呼ばれてる。\nもともとの ラテン語では 病氣をおこす毒の素 みたいな意味だし ぼくたちが嫌はれるのも 分かる。\n$r實際-じっさい に ぼくらの働きによって病氣が引き起こされることもあるからね。\nでも 少なくとも この世界に$r歪-ゆが みをもたらしてゐるのは ぼくらぢゃないんだ。\n昔から いつもあるものを 君たちは 自然 って言ってるよね。\nさういふ意味では ぼくらだって 自然の一部なんだ。\n世界を歪めてるのは ぼくら ではなくて ある種の 「情報」を$r廣-ひろ めてゐる 一部の人間なんだよ。\n;ac_v1 d_attack.virus1 a_attack.virus1.0_md_textV12\n\ntextV12:\n;sc_7\nいたた！。\n\ntextV13:\n;sc_8\nグオーーー！。\n;a_attack.virus1.1_md_textV14\n\ntextV14:\n;sc_8\nタ・・ス・・ケ・・ぅエ・・・！。\n;a_attack.virus1.1_md_textV15\n\ntextV15:\n;sc_7\nあ・・りがたう・・・。\nどうか・・・あいつを・・・うぐっ・・。\n・・・。\n;co_virus1-rna1\n\ntextV21:\n;sc_7\n君たちの 歴史をふり返って ちょっと考えてほしいんだ。\n世の中の多くの人たちが 「正しい」って思ってゐたことが $r實-じつ は $r少數-せうすう の人たちによって ただ思ひこまされてゐただけだっだ ってことが 今までたくさんあったよね？。\nそれは 少數の人たちが 多くの人たちを コントロールするために 必要だと考へられたんだ。\n今君が「正しい」と思ってることは どんな實驗をして どんなふうに証明されたのか ちゃんと分かってゐるかい？。\nもし さうでないのなら もしかしたら君だって ただ「支配」されるために その知識を「正しい」と思わされてゐるのかもしれないよ。\n;ac_v2 d_attack.virus2 a_attack.virus2.0_md_textV22\n\ntextV22:\n;sc_7\nいたいよ〜！。\n\ntextV23:\n;sc_8\n&EQ#$●！♂Ц※◎ボァ！。\n;a_attack.virus2.1_md_textV24\n\ntextV24:\n;sc_8\nウー オア ・・ $# もっ・・ト・・・タタ・・・イテ！。\n;a_attack.virus2.1_md_textV25\n\ntextV25:\n;sc_7\nハア・・・ やっと 樂になれる・・・。\nあいつは・・・叩いても$r無駄-むだ だよ・・・。\n氣をつけて・・・。\n・・・・・。\n;co_virus2-rna2\n\ntextV30:\n;sc_7\nお！。なんか 目が$r冴-さ えてきたよ。\nさうさう 君に$r傳-つた へておきたいことがあるんだ。\nある言葉が どんな意味として 定義されてゐるのか。\nそれを確認しないで ただイメージだけで 言葉を使ったり 聞いたりしてゐると いつのまにか まともな人を傷つけたり 自分自身を どんどん追いこんでいったりするものなんだ。\n例えば 「$r感染-かんせん 」といふ言葉が どう定義されてゐるか 君は分かって その言葉を使ってゐるかい？。\n;hl_https+//youtube.com/watch?v=F|mJbiDgGdo-感染症\nウイルスが「感染」した といふのは どういふ状態をいふのか。\nそれを証明するには 何が分かればよいのか。\n「専門家」に任せるんぢゃなくて まず 自分自身で言葉の意味を 確認して欲しい。\n歴史上 「専門家」が 間違ったことを言ふのは よくあることだ。\nふたりの「専門家」が ある特定の分野に$r關-かん して $r正反對-せいはんたい のことを言ふ場合 特に注意したはうがいい。\nもっとも その場合 ふたりのうちの一方は ほとんど一般の人の目に触れる$r機會-きかひ がないんだけどね。\n;ac_v3 d_block.virus3\n\ntextV31:\n;sc_7\nふわ〜。\nなんか ねむたくて 言ひたいこと 忘れちゃったよ〜。\nちょっと 喝を入れてくれたら 思ひだすかも〜。\n\ntextV32:\n;sc_8\nダメダメダメダメダメダ・・・ァァァァァアア！。\n;a_attack.virus3.1_md_textV33\n\ntextV33:\n;sc_8\nうおおおおおお！ 喝喝喝カーーツ・・・！。\n;a_attack.virus3.1_md_textV34\n\ntextV34:\n;sc_7\n・・・ぼくらの遺傳子で・・・。\nあの子たちを・・・助けてあげ・・・て・・・。\n・・・・・。\n;co_virus3-rna3\n\ntextA0:\n;sc_2\nあなたは どこからきたの？。\n私は道に$r迷-まよ ってしまったの。\nここは どこなんだらうね。\nこの世界は なんだか 色も形も 少ないから・・・\nでも わたし ここだから迷ってゐる といふわけでもないかもしれない。\nあっちの世界に$r居-ゐ たときから 迷ってゐたんだと思ふ。\n自分が どこに居て 何をすればいいのか・・・。\n;a_block.Anna.1_md_textA1\n\ntextA1:\n;sc_2\nここでは お$r腹-なか も減らないし $r喉-のど も$r渇-かは かない。\nでもそれが 私には$r怖-こは い。\n前の世界では 死んでしまふことが怖かった。\nここでは $r變-か はらないことが 怖い。\nけれど あなたなら 何かを變へてくれる。\nそんな氣がするの。\nだって かうやって わたしに 話しかけてくれたんだもの・・・。\n;a_block.Anna.0_if_?counter.yoko,1_md.textA3_el_md.textA2\n\ntextA2:\n;sc_2\nなにか おもしろいことがあったら 教へてね。\nここには あまり おもしろいことが ない・・・いいえ。\nわたしが おもしろいことを 探さうとしてなかった。\nあなたが來るまでは・・・。\n\ntextA3:\n;sc_2\nキャー！ なに この ゲジゲジした虫は！。\n氣持ち惡いよ〜！。\n;d_block.Anna a_block.Anna.0_if_?counter.yoko2,1_md.textA5_el_md.textA4\n\ntextA4:\n;sc_2\nずっと 變はらなかった この世界・・・。\nまるで 滅びを待つかのやうに。\nいいえ たぶん ずっと變はらない といふことが 消滅する っていふことなのかも。\nけれど 今は違ふ。\nあなたのおかげ。\nすべてが めまぐるしく 變はっていくの・・・。\n\ntextA5:\n;sc_2\n長老様は 氣まぐれに見へるけれど。\nなにか とても 深いところを ご覧になってゐるやうな氣がするの。\nただ 今までは それが 變はらない世界の ありさまの一つだった・・・。\nあなたが 長老様と$r會-あ って 何かを知れば きっと 何かが變はると思ふ・・・。\nそれから わたし あなたと話してゐて 思ひ出したことがあるの。\n見て！。\nこれは フルーツ味の あめちゃん。\nかわいいでしょ？。\nわたし こんなものを 持ってゐたこと すっかり忘れてゐたの。\nただ たぶん この世界では 食べても 味はしないし もともと お腹も減らないから 私が持ってゐても あまり役にたたないと思ふ。\nでも あなたが 何かに使ってくれるなら とても嬉しいし ワクワクする！。\nもらってくれるかな？。\n;cho_はい_textA8_いいえ_textA6\n\ntextA6:\n;sc_2\nさう・・・。\nでも もし必要になったら 声をかけてね。\n;d_block.Anna a_block.Anna.0_md_textA7\n\ntextA7:\n;sc_2\nあめちゃん いる？。\n;cho_はい_textA8_いいえ_textA6\n\ntextA8:\n;sc_2 if_?pHave.any_md.textA10_el_md.textA9\n\ntextA9:\n;sc_2\nはい どうぞ。\n;gt_ame d_block.Anna a_block.Anna.0_md_textA11\n\ntextA10:\n;sc_2\nいちど 持ってゐるものを どこかに置いてから また來てくれる？。\n\ntextA11:\n;sc_2\nわたしにも 出來ることがある・・・。\nあめちゃんを 手にとって 見てゐて わたし それを思ひ出した・・・。\nずっと わたし 忘れてゐたみたいなの。\n自分が 力を持ってゐる っていふことを。\n・・・あめちゃん まうひとつ いる？。\n;cho_はい_textA13_いいえ_textA12\n\ntextA12:\n;sc_2\nもし必要になったら 声をかけてね。\n;d_block.Anna a_block.Anna.0_md_textA11\n\ntextA13:\n;sc_2 if_?pHave.any_md.textA10_el_md.textA14\n\ntextA14:\n;sc_2\nはい どうぞ。\n;gt_ame d_block.Anna a_block.Anna.0_md_textA15\n\ntextA15:\n;sc_2\nつぎは どんなことが起こるのかしら。\nとても樂しみ！。\n\ntextA16:\n;sc_6\nギギャ・・グイキュ・・アエゥッキョ！！94<A<(?ボェ・！。\n\ntextA17:\n;sc_6\nアア・・・ゥ・・。\nゥアアぁ・・・・・・。\n・・・・・。\n;sc_2\nわたし・・・。\nどうなってゐたの・・・？。\n;cn ac_annaR if_?counter.yokoR,1_md.textZ1_el_md.textA18 d_block.Anna a_block.Anna.0_md_textA18\n\ntextA18:\n;sc_2\nあなたが助けてくれたのね・・・。\nいったい何が起こったのかしら。\n變はる といっても あんなのは・・・まうごめんだわ・・・。\n\ntextT0:\n;sc_4\nここがどこか 知りたいか？。\n;cho_はい_textT1_いいえ_textT2\n\ntextT1:\n;sc_4\nここは おぬしが入ってきた $r結合器-けつがふき の中ぢゃ。\nなにかと なにかを くっつけて なにかをつくる・・・。\nその 決まりを この部屋で決めておるのぢゃ。\n;a_block.Tana.0_md_textT3 a_block.Yoko.1_md_textY1\n\ntextT2:\n;sc_4\nさうか ならば 何も言ふまい・・・。\n\ntextT3:\n;sc_4\nわしに 言へることは それだけぢゃ・・・。\n\ntextT4:\n;sc_4\nPCRとは 何か知っておるか？。\nこれは Polymerase Chain Reaction の略ぢゃ。\n;hl_https+//seibutsujournal.com/pcr-PCR\n$r遺傳子-いでんし (DNA)を$r増殖-ぞうしょく させることで 少量に$r付着-ふちゃく したやうな遺傳子を増やして。\nそれが 何の遺傳子なのか 特定したり その遺傳子を研究し易くするための手法のことを言ふのぢゃ。\n;a_block.Tana.1_md_textT5\n\ntextT5:\n;sc_4\nつまり PCRといふのは 遺傳子を増やす技術ぢゃ。\nもし 仮に そのPCRで検査するウイルスが 何か人間に害をもたらすウイルスだとして。\nそのウイルスが たまたま 鼻の中に ひとつかふたつ あった場合。\nそれを増やして そのウイルスが 惡玉だと判断することは 可能ぢゃ。\nもちろん その遺傳子情報が 別の 常在ウイルス すなはち そこにあっても 病氣の原因にはならないやうなウイルスと似てゐる場合があるので 正確に判断できるかは 疑問があるのぢゃが。\nそれはともかく もし それが惡玉だと証明されたとしやう。\nそれでも それが付いてゐたのは 鼻の穴の中で それは ひとつかふたつなのぢゃぞ？。\nそれが おぬしの體に病氣を引き起こしてゐるのか さうでないのか。\nPCRでは 何も教へてはくれんのぢゃ。\n;a_block.Tana.1_md_textT6\n\ntextT6:\n;sc_4\nそれはさうと この装置は PCRを利用して 特定のRNAを$r増幅-ぞうふく させ わしの$r開發-かいはつ した遺傳子操作を施すことによって 何らかのワクチンによって 遺傳子を操作され 危険にさらされる可能性のある生命に$r投与-とうよ する 新たな種類のワクチンを製造するものぢゃ・・・。\n・・・まうすこし わかりやすく言へば。\n變なワクチンを打たれてゾンビ化した人間を元に戻せるワクチンをつくる装置 といふことぢゃ。\nこれに必要な材料は 何らかのRNA ひとかたまりのみぢゃ。\n画期的ぢゃらう。\nまあ ろくに$r臨床-りんしゃう $r實驗-じっけん もされず 細胞に自己増殖を促し 生命を蝕む とんでもないワクチンが打たれなければ それに越したことはないのぢゃが・・・。\n・・・むむ・・・何か 外が騒がしいぞ・・・？。\n;d_block.Yoko d_block.Anna d_attack.virus1 d_attack.virus2 uo_0.Yoko.move-5,,block,north uo_0.Anna.move-6,,block,north uo_0.virus1.shoot-7,,block,north uo_0.virus2.shoot-6,,block,north uo_0.virus3.shoot-5,,block,north a_block.Yoko.0_if_?pHave.xVaccine_md.textY6_el_md.textY5 a_block.Anna.0_if_?pHave.xVaccine_md.textA17_el_md.textA16 a_block.Tana.0_md_textT7 a_attack.virus1.1_md_textV13 a_attack.virus2.1_md_textV23 a_attack.virus3.1_md_textV32 a_leave_sl a_nolife_md_textNLF\n\ntextT7:\n;sc_4\nどうしたといふんぢゃ？・・・。\n\ntextT8:\n;sc_4\nどうやら 直接 やつらを$r叩-たた くしかないやうじゃ・・・。\nＺバスターが完成するまではな・・・。\n;d_block.Tana a_block.Tana.0_md_textT9 a_nolife_md_textNLF\n\ntextT9:\n;sc_4\nたのむ！。\nやつらを たおしてくれ・・・。\n\ntextT10:\n;sc_4\nＺバスターが完成したぞ！。\nこれを持って 戰ふのぢゃ！。\n;gt_ZBuster d_block.Tana a_block.Tana.0_md_textT11\n\ntextT11:\n;sc_4\nＺバスターなら $r奴-やつ を倒せる！。\n\ntextNLF:\n・・・めまいがする・・・。\n;hm\n・・・・・。\n・・・。\n;em_PCR sl sp_player.6.4 if_?pHave.ZBuster_md.textT11_if_?counter.tana,1_md.textT10_el_md.textT8\n\ntextZ0:\n;sc_0\n・・・フフフフ・・・・。\n・・・・。\n;sc_5\nギャハアハハハハハ・・・！。\n;md_textZ2\n\ntextZ1:\n;sc_0\n・・・ヒヒヒ・・・・。\n・・・。\n;sc_6\nブヒャヒャヒャアアア・・・・！。\n;md_textZ2\n\ntextZ2:\n;sc_8\nオマヘハ ドコカラキタ？。\nコノセカイノ モノデハナイナ？。\nワタシノ カンセンリョクニ アラガフトハ。\nダガ ソレモ ココマデダ。\nココデ ソノ ムクヒヲ ウケルガヨイ・・・！。 \n;p_ZVaccine.7.1 a_attack.ZVaccine.0_md_textZ3 a_shoot.ZVaccine.1_md_textZ4 d_block.Yoko d_block.Anna d_block.Tana a_block.Yoko.0_md_textY5 a_block.Anna.0_md_textA16 a_block.Tana.1_md_textT10 ac_tana\n\ntextZ3:\n;sc_8\nフフファアアア！。\nソンナ モノハ キカンワ！。\n\ntextZ4:\n;sc_8\nオマヘガ ヰタセカイニモ ワレワレノ ナカマガ ハナタレタ。\nメディア トイフ ジョウハウゲンヲ トホシテナ。\nアタマヲ オカサレタ グンシュウハ イトモカンタンニ ワレワレノ ジョウハウヲ シンジ。\nヨリ キョウリョクニ ワレワレノ シハイヲ ウケイレルデアラウ・・・。\n;a_shoot.ZVaccine.1_md_textZ5\n\ntextZ5:\n;sc_8\nワレラガノゾム エイキュウノ イノチ。\nスナハチ ジンルイガ ニクタイヲ ステ コンピュータニ ノウヲ ツナギ。\nワレワレノ シハイノモトニ エイキュウノ ラクエンヘト ムカフ。\nソノ ジツゲンハ マウ モクゼンニアル。\nオマヘタチノ ジユウ トハ ツネニ ワレラノ カンリカニオケル ジユウ。\nソレヲ ハキチガヘ オノレダケデ カッテナコトヲ シヤウトハ。\nミノホドヲシレ！。\n;a_shoot.ZVaccine.1_md_textZ6\n\ntextZ6:\n;sc_8\nウオアェアェアア・・・・ゥォッ！！。\nソンナ・・・ヴァカナアアア・・・・・ッ・！。\n・・・・・。\n・・・・。\n・・・。\n;sc_7\n・・・あれ・・・。\n・・・いったい・・ぼくは・・・？。\nさうか・・・ぼくも あの$r實驗-じっけん で・・・。\n$r大變-たいへん なことをしてしまった・・・。\nぼくには 生きてゐる資格がない・・・。\n;sc_2\n待って！\n;uo_0.ZVaccine.stand,,block,north p_Tana.15.8 uo_0.Yoko.approach-20-1,,block,north uo_0.Anna.approach-20-1,,block,north cm_mov\nあなただって 被害者なのよ！。\nそれに・・・まう 二度とこんなことにならないためにも。\nどうか 私たちと協力して この世界を 變へてほしいの・・・。\n;sc_7\n・・・う・・・っ・・・ありが・・たう・・。\nたくさんの遺傳子に このことを傳へて ひどい人體實驗が きっとなくなるやうに 働きかけてみるよ・・・。\n;sc_1\n君の心の強さが 僕らに希望をくれた。\n僕も 自分の心をよく観察して 本當に望む世界を 創ってみせる・・・。\n;sc_4\n世界は 己の心の中にある。\n今 それを詳しく語るのは 無粋といふものぢゃが。\nこのことを 十分に理解すれば おぬしの望む世界が 必ず訪れる。\nどうか この世界での 短い經驗を 己の生き方に繋げてくれんか。\n;sc_2\nあなたは 私達にとって 光だった・・・。\nあなたの もと居た世界に歸っても あなたが あなたでありますやうに・・・。\n;sc_7\nぼくからも ・・・ありがたう。\n君の居た世界にも ぼくらの思ひがきっと届く・・・。\n;sc_1\nそろそろお別れか・・・。\n寂しくなるな・・・。\n;sc_4\n次は おぬしが この世界を盛り上げる番ではないか。\n;sc_1\nさうでした・・・。\nそれぢゃあ 氣をとりなおして。\n元氣に見送るとするか！。\n;sc_2\nさやうなら！。\nまた きっと會へるでせう！。\n私達の心が また あなたに繋がりますやうに！。\n;sc_7\nさやうなら！。\nそして ありがたう！。\n;sc_4\n達者でな・・・。\n;end\n\ntextEnd:\nプレイしていただき ありがたうございました。\n私にとって この操画(ゲーム)は 次のやうな意義があります。\n函數型言語 Haskell で すべてのコードを書き。\nつたないながらも FRP といふコーディングスタイルをかなり 練習できたといふこと。\nAndroid 端末をターゲットにすることで 携帯ゲームへの道を開いたこと。\nパズルやシステムの基本的な構造を構築できたこと。\nより樂しいパズルや アクション そして物語を考へる上での 一歩を踏み出せたこと。\n時事的な話題や 考へ方 価値観を傳へる難しさを あらためて實感できたこと。\nおそらく みなさんが 満足するやうな操画を創るレベルには 到底逹っしてゐませんが。\n今後 みなさんが 樂しんでいただける。\nかつ 何らかの 傳はるものがある。\nさういった操画を 創作していきたい所存です。\n最後に この操画を創る モチベーションを強めてくださった 藤屋さん。\nつねに面白い操作をして バグを炙り出してくれる たかぽん。\n暖かい目で 私の制作を見て 遊んでくれた 颯平に 感謝します。\nいつか 「わかひめ」を 最高に面白い作品にすべく 邁進してまひります。\n本當に ありがたうございました！。\n令和六年九月二十四日。\n横山 照久 拜。\n;cm_end"