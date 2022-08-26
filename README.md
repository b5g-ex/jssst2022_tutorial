# jssst2022_tutorial

JSSST2022（日本ソフトウェア科学会第39回大会）の併設イベントとして実施されるチュートリアルのポータルページです．詳細ならびに参加申込方法は，次のページを参照してください．

https://jssst2022.wordpress.com/tutorial/

- 日本ソフトウェア科学会第39回大会チュートリアル  
「関数型言語Elixirで始めるIoTシステム開発入門」
- 講師
  - 高瀬 英希　（東京大学）
  - 細合 晋太郎（東京大学）
  - 菊池 豊　　（高知工科大学）
  - 西内 一馬　（シティネット）
  - 大崎 充博　（シティネット）
- 日時：2022年8月30日（火），12:30-15:30

## Timetable & Contents

現時点で検討中の内容と進行のおおよその目安です．各項目の資料などへのリンクを追加予定です．


1. ElixirとNervesの導入と基礎 [30min]
1. Nervesハンズオン [90min]
   - [基本編](https://docs.google.com/presentation/d/1SSof8iCU8ta1IjrGitoAZcCxtdR0tJm_1nYFSRBWJ9k/edit?usp=sharing)
   - [応用編](https://docs.google.com/presentation/d/1sc6bmsCPnFua7dy6wIRjZlGDQL2yM7AuznwsxPutBb0/edit?usp=sharing)
1. 小水力発電制御システムへの展開事例 [30min]
1. 5G/Beyond 5Gへの展開 [30min]


## Preparation

「2. Nervesハンズオン」参加者に事前準備いただく機材などをお示しします．

### Onsite Participants

会場現地での参加を予定されている方は「有線LAN接続可能なノートPC」をご持参ください．ノートPCに有線LANポートが無い場合はコネクタをご持参ください（講師側でも用意しますが数に限りがあります）．

その他の機材は会場で貸し出します．

### Online Participants

オンラインでの参加を予定されている方向けの機材一覧です．電子パーツのリンクは大学生協で取引可能なマルツを参考に示していますが，納品まで5営業日ほどかかりますので，早めの手配をおすすめします．

- インターネット接続環境
- 有線LAN接続可能なノートPC
  - 有線LANコネクタでも可
  - Zoom視聴用のデバイス（PCやタブレット）は別にされることをおすすめします
- LANケーブル（PCとラズパイの接続用・短いものでOK）
- Raspberry Pi 4
  - メモリ容量は不問（会場では4GBを使用予定）
  - 空前の在庫不足につきRaspberry Pi 3しかお持ちでない場合は，[本リポジトリのIssues](https://github.com/b5g-ex/jssst2022_tutorial/issues)にて事前にお知らせください．
- Raspberry Pi用の電源アダプタ
- microSDカード
  - 容量は不問です．4GBでも問題ありません（会場では64GBを使用予定）
  - microSDカードリーダーも必要です．
- [Grove Base Hat for Raspberry Pi](https://www.marutsu.co.jp/pc/i/31964924/)
- [Grove Button](https://www.marutsu.co.jp/pc/i/10229505/)
- [Grove LED](https://www.marutsu.co.jp/pc/i/829294/)
- [Grove AHT20 I2C](https://www.marutsu.co.jp/pc/i/34539580/)

オンライン参加の方は，事前にmicroSDカードにファームウェアイメージを書き込んでいただく必要があります．

#### Firmware Setup
ファームウェアをmicroSDカードに書き込むには，[fwup](https://github.com/fwup-home/fwup#installing)または，[Etcher](https://www.balena.io/etcher/)を用います．
Windows環境ではEtcher,Mac/Linux環境ではfwupを用いることをお勧めします．

##### fwup
[本リポジトリのRelease](https://github.com/b5g-ex/jssst2022_tutorial/releases/tag/v1.0.0)よりv1.0.0のファームウェアnerves_livebook.fw をダウンロードします．

microSDを挿入したカードリーダーをPCに接続しておきます．

ダウンロードしたフォルダに移動し，
```
sudo fwup nerves_livebook.fw
```
を実行します．管理者権限が求められますので，linux環境ではsudoを付与し，Windows/WSL環境では権限を求めるウィンドウが表示されるのでOKで進んでください．
##### Etcher

[本リポジトリのRelease](https://github.com/b5g-ex/jssst2022_tutorial/releases/tag/v1.0.0)よりv1.0.0のファームウェアnerves_livebook.img をダウンロードします．

microSDを挿入したカードリーダーをPCに接続しておきます．

Etcherを起動し，「Flash from file」をクリックし，ダウンロードしたファイルを選択します．
「Select target」でmicroSDカードのドライブが表示されていることを確認し，チェックします．
「Flash」をクリックします，権限を求めるウィンドウが表示される場合はYesで進んでください．
## Question?

チュートリアルの内容や事前準備についての質問などがありましたら，[本リポジトリのIssues](https://github.com/b5g-ex/jssst2022_tutorial/issues)にてお知らせください．
開催事後でも，ハンズオン内容への技術的な質問やチュートリアル資料に関する相談も承ります．
