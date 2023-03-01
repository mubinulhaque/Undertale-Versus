///battle_fight2()

//Fighting
draw_text(336, 272, "You are now fighting Gaster.")

//Cancel Key
if(INPUT.cancelKey2) {
    action2 = battle_set_action2
    ObjBattleAlarm.chars_drawn2 = 1
    ObjBattleAlarm.alarm[1] = 1
}
