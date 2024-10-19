create or replace PACKAGE bbe_plugin
AS
    -------------------------------------------------------------------------
    -- This package is used to render the DA Plugin
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
      RETURN apex_plugin.t_dynamic_action_render_result;
END bbe_plugin;
/