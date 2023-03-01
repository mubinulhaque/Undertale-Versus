///battle_fight()

//Fighting
draw_text(48, 272, "You are now fighting Gaster.")

//Cancel Key
if(INPUT.cancelKey) {
    action = battle_set_action
    ObjBattleAlarm.chars_drawn = 1
    ObjBattleAlarm.alarm[0] = 1
}
