create or replace PACKAGE BODY bbe_plugin
AS
    -------------------------------------------------------------------------
    -- This package is used to render the DA Sweet Alert Plugin
    -- 
    -- Author  : Badreddine Belahrach - (BBE) 
    -- Date    ; 10/10/2024
    -- Version : 1.0
    -------------------------------------------------------------------------

    -------------------------------------------------------------------------
    -- Function: render
    -- function to render the plug-in
    -------------------------------------------------------------------------
   FUNCTION render (p_dynamic_action   IN apex_plugin.t_dynamic_action,
                    p_plugin           IN apex_plugin.t_plugin)
      RETURN apex_plugin.t_dynamic_action_render_result
   AS
      l_result   apex_plugin.t_dynamic_action_render_result;
      l_html_whitelist_tags constant varchar2(255) := '<span>,</span>,<h1>,</h1>,<h2>,</h2>,<h3>,</h3>,<h4>,</h4>,<p>,</p>,<b>,</b>,<strong>,</strong>,<i>,</i>,<ul>,</ul>,<ol>,</ol>,<li>,</li>,<br />,<hr/>';

   BEGIN

    --Plugin debug
    if apex_application.g_debug 
    then
        apex_plugin_util.debug_dynamic_action
          ( p_plugin         => p_plugin
          , p_dynamic_action => p_dynamic_action
          );
    end if;

    l_RESULT.JAVASCRIPT_FUNCTION   := 'bbe_plugin.initialize';
    l_result.attribute_01          := p_dynamic_action.attribute_01;
    l_result.attribute_02          := p_dynamic_action.attribute_02;
    l_result.attribute_03          := p_dynamic_action.attribute_03;
    l_result.attribute_04          := p_dynamic_action.attribute_04;
    l_result.attribute_05          :=  case when (p_dynamic_action.attribute_05 is not null) then
                                        '<span aria-hidden="true" class="'||p_dynamic_action.attribute_05||'"></span>' 
                                        --APEX_ESCAPE.HTML_WHITELIST(p_dynamic_action.attribute_05,l_html_whitelist_tags); 
                                       else null
                                       end;  
    l_result.attribute_06          := p_dynamic_action.attribute_06;
    l_result.attribute_08          := p_dynamic_action.attribute_08;
    l_result.attribute_09          := p_dynamic_action.attribute_09;
    l_result.attribute_10          := p_dynamic_action.attribute_10;
    l_result.attribute_11          := case when (p_dynamic_action.attribute_08 = 'N') then
                                        p_dynamic_action.attribute_11
                                       else null
                                       end;
    l_result.attribute_12          := p_dynamic_action.attribute_12;
    l_result.attribute_13          := p_dynamic_action.attribute_13;
    l_result.attribute_14          := case when (p_dynamic_action.attribute_14 is null) then
                                        'center' 
                                       else p_dynamic_action.attribute_14
                                       end; 
    l_result.attribute_15          := p_dynamic_action.attribute_15;
 
      RETURN l_result;
   END render;
END bbe_plugin;
/