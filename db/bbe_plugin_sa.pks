create or replace PACKAGE bbe_plugin
AS
    -------------------------------------------------------------------------
    -- This package is used to render the DA Sweet Alert Plugin
    -- 
    -- Author  : Badreddine Belahrach - (BBE)  
    -- Version : 1.0
    -------------------------------------------------------------------------

    -------------------------------------------------------------------------
    -- Function: render
    -- function to render the plug-in
    -------------------------------------------------------------------------
   FUNCTION render (p_dynamic_action   IN apex_plugin.t_dynamic_action,
                    p_plugin           IN apex_plugin.t_plugin)
      RETURN apex_plugin.t_dynamic_action_render_result;
END bbe_plugin;
/