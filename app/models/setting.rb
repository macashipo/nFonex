class Setting < RailsSettings::Settings
#Setting.limit_size_sound = 1
Setting.url_question_pattern= "/[pre_campaign]campaign_id/[pre_question]question_id"
Setting.url_answer_pattern= "/[pre_campaign]campaign_id/[pre_question]question_id-[pre_answer]answer_id"
end