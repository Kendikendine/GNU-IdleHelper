#Requires AutoHotkey v2.0
#Warn
#SingleInstance Force
CoordMode "Mouse", "Client"  ; Koordinatların pencereye göre olduğunu belirtir
Global AdvZoneNum :=4
Global RebirthOnOff :=0
Global RebirthTime :=40 ;dakika cinsinden
;Kullanıcıyı bilgilendirme mesajları
MsgShox(Msg) {
	CoordMode "ToolTip", "Client"
	x := A_ScreenWidth // 2
	y := A_ScreenHeight // 2
	ToolTip Msg, x, y
	SetTimer () => ToolTip(), -6000
}
; Basic Training tıkla
BTclick() {
	x := Random(340, 470)
	y := Random(30, 50)
	Click x, y
	Sleep Random(50, 100)
}
; 1 tuşuna basıldığında Basic Training e tıkla
$1::{
	BTclick()
	return
}
; FightBoss tıkla
FBclick() {
	x := Random(340, 470)   
	y := Random(75, 95)     
	Click x, y
	Sleep Random(50, 100)
}
; 2 tuşuna basıldığında FightBoss tıkla
$2::{
	FBclick()
	return
}
; MoneyPit tıkla
MPclick() {
	x := Random(340, 470)   
	y := Random(125, 145)     
	Click x, y
	Sleep Random(50, 100)
}
; 3 tuşuna basıldığında MoneyPit tıkla
$3::{
	MPclick()
	return
}
; Adventure tıkla
ADVclick() {
	x := Random(340, 470) 
	y := Random(175, 195)  
	Click x, y
	Sleep Random(50, 100)
}
; 4 tuşuna basıldığında Adventure tıkla
$4::{
	ADVclick()
	return
}
; İnventory tıkla
INVclick() {
	x := Random(340, 470)   
	y := Random(220, 240)     
	Click x, y
	Sleep Random(50, 100)
}
; 5 tuşuna basıldığında İnventory tıkla
$5::{
	INVclick()
	return
}
; Augmentation tıkla
AUGclick() {
	x := Random(340, 470)   
	y := Random(265, 285)     
	Click x, y
	Sleep Random(50, 100)
}
; 6 tuşuna basıldığında Augmentation tıkla
$6::{
	AUGclick()
	return
}
; Advanced Training tıkla
ATclick() {
	x := Random(340, 470)   
	y := Random(310, 330)     
	Click x, y
	Sleep Random(50, 100)
}
; 7 tuşuna basıldığında Advanced Training tıkla
$7::{
	ATclick()
	return
}
; Time Machine tıkla
TMclick() {
	x := Random(340, 470)   
	y := Random(360, 380)     
	Click x, y
	Sleep Random(50, 100)
}
; 8 tuşuna basıldığında Time Machine tıkla
$8::{
	TMclick()
	return
}
; Blood Magic tıkla
BMclick() {
	x := Random(340, 470)   
	y := Random(405, 425)     
	Click x, y
	Sleep Random(50, 100)
}
; 9 tuşuna basıldığında Blood Magic tıkla
$9::{
	BMclick()
	return
}
/*
; Reserve tıkla
Reserve() {
	x := Random(340, 470)   
	y := Random(405, 425)     
	Click x, y
	Sleep Random(50, 100)
}
; 0 tuşuna basıldığında Reserve tıkla
$0::{
	Reserve()
	return
}
*/
; BFight() Boss Fighte basar
BFight() {
	FBclick()
	x := Random(1020, 1180)
	y := Random(430, 480) 
	Click x, y
	Sleep Random(50, 100)
}
; s tuşuna basıldığında Boss Fight e bas fonksiyonunu çağır
$s::{
	BFight()
	return
}
; BStop() Boss Stop basar
BStop() {
	FBclick()
	x := Random(1020, 1180)
	y := Random(340, 380) 
	Click x, y
	Sleep Random(50, 100)
}
; f tuşuna basıldığında Boss Stop e bas fonksiyonunu çağır
$f::{
	BStop()
	return
}
; SendPitAllMoney tıklama fonksiyonu MPclick ten sonra çağır
SendPitAllMoney() {
	MPclick()
	;Feed me click
	x := Random(670, 820)
	y := Random(260, 310)
	Click x, y
	Sleep Random(50, 100)
	;Yes click
	x := Random(720, 810)
	y := Random(545, 565)
	Click x, y
	Sleep Random(50, 100)
}
; q tuşuna basıldığında SendPitAllMoney fonksiyonunu çağır
$q::{
	SendPitAllMoney()
	return
}
;  Rebirth tıklama fonksiyonu 
Rebirth() {
	SendPitAllMoney()
	;RebirthMain click
	x := Random(70, 220)
	y := Random(725, 750)
	Click x, y
	Sleep Random(50, 100)
	;Click Rebirth
	x := Random(865, 1030)
	y := Random(895, 920)
	Click x, y
	Sleep Random(50, 100)
	;Click Yes
	x := Random(720, 800)
	y := Random(540, 560)
	Click x, y
	Sleep Random(50, 100)
}
; w tuşuna basıldığında Rebirth fonksiyonunu çağır
$w::{
	Rebirth()
	return
}
; SkillFull fonksiyonu
SkillFull() {
BTclick()
	x := Random(1170, 1190)
	y := Random(30, 40)
	Click x, y
	Sleep Random(50, 100)
	x := Random(1450, 1480)
	y := Random(235, 250)
	Click x, y, "Right"
	Sleep Random(50, 100)
}
; z tuşuna basıldığında SkillFull fonksiyonunu çağır
$z::{
	SkillFull()
	return
}
; SetAdvZone fonksiyonu
SetAdvZone() {
	ADVclick()
	Loop AdvZoneNum {
		x := Random(1625, 1650)
		y := Random(360, 370)
		Click x, y
		Sleep Random(50, 100)
	}
}
; e tuşuna basıldığında SetAdvZone fonksiyonunu çağır
$e::{
	SetAdvZone()
	return
}
; Augmentation Custom input 1 i enerji koymak
SendAUGEnergy() {
	AUGclick()
	;Custom input 1 click
	x := Random(560, 680)
	y := Random(70, 80)
	Click x, y
	Sleep Random(50, 100)
	;Yes click
	x := Random(930, 950)
	y := Random(450, 470)
	Click x, y
	Sleep Random(50, 100)
}
; Time machineye Enerji cap kadar enerji koymak
SendTMEnergy() {
	TMclick()
	;Energy cap click
	x := Random(1170, 1190)
	y := Random(30, 40)
	Click x, y
	Sleep Random(50, 100)
	;Yes click
	x := Random(920, 940)
	y := Random(395, 420)
	Click x, y
	Sleep Random(50, 100)
}
; Blood magic 1. rituala cabı kadar enerji koymak
SendBMEnergy() {
	BMclick()
	;1.rutual cab click
	x := Random(975, 1010)
	y := Random(385, 405)
	Click x, y
	Sleep Random(50, 100)
}
; Tüm timer'ları başlatan fonksiyon
AllTimerOn() {
	SetTimer SetAdvZone, -150000 ; 2:30 dakika 1 kere
	SetTimer SendAUGEnergy, -240000 ; 4 dakikada 1 kere
	SetTimer SkillFull, -360000 ; 6 dakika bir kere
	SetTimer SendBMEnergy, -900000 ; 15 dakika bir kere
	SetTimer SendTMEnergy, -990000 ; 16:30 dakika bir kere
	SetTimer StartAutoRebirth, -RebirthTime * 60000  ; sonra Rebirth kontrolü
	MsgShox("Tüm timerler açıldı")
}
; Tüm timer'ları kapatan fonksiyon
AllTimerOff() {
	SetTimer SetAdvZone, 0
	SetTimer SendAUGEnergy, 0
	SetTimer SkillFull, 0
	SetTimer SendBMEnergy, 0
	SetTimer SendTMEnergy, 0
	SetTimer StartAutoRebirth, 0
	MsgShox("Tüm timerler kapandı")
}
; Ana kontrol fonksiyonu (sistemi başlatır)
StartAutoRebirth() {
	if (RebirthOnOff = 0) {
		AllTimerOff()  ; RebirthOnOff 0 ise timer'ları kapat ve çık
	return
	}
	Rebirth()  ; RebirthOnOff 1 ise Rebirth yap ve sistemi sıfırla
	AllTimerOn()  ; RebirthOnOff 1 ise timer'ları başlat
}
; Sistemi başlatmak durdurmak için X e bass on off anahtarı.
$x::{
	Global RebirthOnOff := !RebirthOnOff
	StartAutoRebirth()
	return
}

; ShowShortcuts fonksiyonu, harf kısayollarını tooltip ile gösterir
ShowShortcuts() {
	MouseGetPos &xpos, &ypos
	ToolTip "
	(
	--Kısayollar--
(1-0 arası menüler açılır)
s: Boss Fight e bas
f: Boss Stop Bas
q: Money Pit'e tüm parayı yollar
w: Rebirth yapar
e: Advanture Zone ayarlar
z: SkillFull çalıştırır
x: StartAutoRebirth On-Off tuşu
	)", xpos + 20, ypos + 20
	SetTimer () => ToolTip(), -5000  ; 5 saniye sonra tooltip'i kaldır
}
; p tuşuna basıldığında ShowShortcuts fonksiyonunu çağır
$p::{
	ShowShortcuts()
	return
}

;scribe deneme amaçlı kodlar bundan sonra yazdıklarım final sürümünde buradan aşağısı silinecek
;Msgbox çalışyormu
; o tuşuna basıldığında MsgShox(Msg) fonksiyonunu çağır
$o::{
	MsgShox("mesajın ilk satırı`nmesajın ikinci satırı")
	return
}
