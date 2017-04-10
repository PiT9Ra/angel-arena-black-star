item_blade_mail_baseclass = {}
LinkLuaModifier("modifier_item_blade_mail_arena", "items/lua/modifiers/modifier_item_blade_mail_arena.lua", LUA_MODIFIER_MOTION_NONE)
LinkLuaModifier("modifier_item_blade_mail_arena_active", "items/lua/modifiers/modifier_item_blade_mail_arena.lua", LUA_MODIFIER_MOTION_NONE)
function item_blade_mail_baseclass:GetIntrinsicModifierName()
	return "modifier_item_blade_mail_arena"
end
if IsServer() then
	function item_blade_mail_baseclass:OnSpellStart()
		local caster = self:GetCaster()
		caster:AddNewModifier(caster, self, "modifier_item_blade_mail_arena_active", {duration = self:GetLevelSpecialValueFor("duration", self:GetLevel() - 1)})
		caster:EmitSound("DOTA_Item.BladeMail.Activate")
	end
end
item_blade_mail_arena = class(item_blade_mail_baseclass)
item_blade_mail_2 = class(item_blade_mail_baseclass)
item_blade_mail_3 = class(item_blade_mail_baseclass)