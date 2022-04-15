<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20220415112602.1"><vh>@settings</vh>
<v t="leo.20220415112602.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20220415112602.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20220415112816.1"><vh>newHeadline</vh></v>
<v t="leo.20220415112655.1"><vh>@path gear</vh>
<v t="leo.20220415112833.1"><vh>@edit compile_for_e_2008.bat</vh></v>
<v t="leo.20220415112548.2"><vh>@@auto gear.c</vh>
<v t="leo.20220415112717.1"><vh>int report (gear.c)</vh></v>
<v t="leo.20220415112717.2"><vh>static logical (gear.c)</vh></v>
<v t="leo.20220415112717.3"><vh>void do_ugopen_api (gear.c)</vh>
<v t="leo.20220415112717.4"><vh>char options (gear.c)</vh></v>
</v>
<v t="leo.20220415112717.5"><vh>void ufusr (gear.c)</vh></v>
<v t="leo.20220415112717.6"><vh>int ufusr_ask_unload (gear.c)</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20220415112548.2">
/*
#include &lt;stdio.h&gt;

#include &lt;uf.h&gt;
#include &lt;uf_ui.h&gt;

#define UF_CALL(X) (report( __FILE__, __LINE__, #X, (X)))

static int report( char *file, int line, char *call, int irc)
{
  if (irc)
  {
     char    messg[133];
     printf("%s, line %d:  %s\n", file, line, call);
     (UF_get_fail_message(irc, messg)) ?
       printf("    returned a %d\n", irc) :
       printf("    returned error %d:  %s\n", irc, messg);
  }
  return(irc);
}

static void do_ugopen_api(void)
{
    // 第二輸入變數為 1 表示要將資料顯示在視窗, 若為 0 則資料會顯示在狀態區
    uc1601("Hello NX Programming!",1);
}

void ufusr(char *param, int *retcode, int param_len)
{
  if (!UF_CALL(UF_initialize()))
  {
    do_ugopen_api();
    UF_CALL(UF_terminate());
  }
}

int ufusr_ask_unload(void)
{
  return (UF_UNLOAD_IMMEDIATELY);
}
*/
/******************************************************************************
 *                                                                            *
 * PROGRAM DESCRIPTION -                                                      *
 *   The following example requires a blank, open part. The code creates a    *
 *   spur gear																  *
 * gear_model2.c															  *
 ******************************************************************************/
#include &lt;stdio.h&gt;
#include &lt;math.h&gt;
#include &lt;uf.h&gt;
#include &lt;uf_defs.h&gt;
#include &lt;uf_curve.h&gt;
#include &lt;uf_modl_curves.h&gt;
#include &lt;uf_modl.h&gt;
#include &lt;uf_disp.h&gt;
#include &lt;uf_ui.h&gt;
#include &lt;uf_csys.h&gt;
#include &lt;uf_obj.h&gt;
//#include &lt;uf_mtx.h&gt;
//#include &lt;uf_trns.h&gt;
//#include &lt;uf_view.h&gt;
#include &lt;uf_vec.h&gt;
#include &lt;uf_lib.h&gt;

#define POLES 6
#define WEIGHT 1.0
#define ORDER 6

#define UF_CALL(X) (report( __FILE__, __LINE__, #X, (X)))
@others
@language c
@tabwidth -4
@ignore
</t>
<t tx="leo.20220415112602.1"></t>
<t tx="leo.20220415112602.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20220415112602.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20220415112655.1"></t>
<t tx="leo.20220415112717.1">static int report( char *file, int line, char *call, int irc)
{
  if (irc)
  {
     char messg[133];
     printf("%s, line %d:  %s\n", file, line, call);
     (UF_get_fail_message(irc, messg)) ?
       printf("    returned a %d\n", irc) :
       printf("    returned error %d:  %s\n", irc, messg);
  }
  return(irc);
}

</t>
<t tx="leo.20220415112717.2">static logical prompt_for_three_numbers(char *prompt, char *item1, char *item2, char *item3,
                                        double *number1, double *number2, double *number3)
{
    int
        irc,
        resp;
    char
        menu[3][16];
    double
        da[3];
    
    strncpy(&amp;menu[0][0], item1, 15);
    strncpy(&amp;menu[1][0], item2, 15);
    strncpy(&amp;menu[2][0], item3, 15);

    da[0] = *number1;
    da[1] = *number2;
    da[2] = *number3;
    
    resp = uc1609(prompt, menu, 3, da, &amp;irc);
    if (resp == 3 || resp == 4)
    {
        *number1 = da[0];
        *number2 = da[1];
     *number3 = da[2];

        return TRUE;
    }
    else return FALSE;
}

</t>
<t tx="leo.20220415112717.3">static void do_ugopen_api(void)
{
    int 	i,j, k_fixup, p_fixup, trim_opts[3], arc_opts[3];
    int 	create_flag=1, style1, method, method1 = 0, flag1;
    int		resp, int_teeth_no, num_instances;

    tag_t	lh_spline, rh_spline, lh_base_spline, rh_base_spline, temp_tag, od_arc_tag, wcs_tag,
            curve_obj[3], lh_fillet, rh_fillet, root_arc_tag, cyl_tag, instances, tooth_gap_tag,
            teeth_grp_tag, teeth_tag[240];

    double	knotseq[12]={0.0,0.0,0.0,0.0,0.0,0.0,1.0,1.0,1.0,1.0,1.0,1.0};
    double	pole_array[POLES*4], poles[6][3], poles1[6][3], poles2[6][3];
    double	base_rad, root_rad, rad2 , theta1, theta2, theta3, delta_theta,
    double	origin[3] ={0.0,0.0,0.0};
    double	tooth_length=2.0, gear_od;
       // Yen
        double delta_u = 1.0/((double)(POLES-ORDER+1));

    @others
}

/*ARGSUSED*/
</t>
<t tx="leo.20220415112717.4">    char	options[6][38]={"Full-depth, 14.5 deg pressure angle",
                            "Full-depth, 20 deg pressure angle",
                            "Stub, 20 deg pressure angle",
                            "Coarse-pitch 20 deg pressure angle",
                            "Coarse-pitch 25 deg pressure angle",
                            "Fine-pitch 20 deg pressure angle"};
    //char tooth_length_st[16], gear_od_st[16], teeth_no_st[16], angle_st[16];
       char tooth_length_st[32], gear_od_st[32], teeth_no_st[32], angle_st[32];
    char *taper_angle = "0.0";
    char *limit1[2] = {"        ", "        "};
    //char start_limit_st[8], end_limit_st[8];
       //char start_limit_st[32], end_limit_st[32];
       char start_limit_st[80], end_limit_st[80];
       char debugstring[80] = "";

    
    UF_CURVE_arc_t arc_coords;
    UF_CURVE_line_t ln1;
    uf_list_p_t loop_list, features, instances_feature_list;
        // Yen
        limit1[0]="0.0";
        limit1[1]="2.0";
    for(i=0;i&lt;6;i++)
    {
      for(j=0;j&lt;6;j++)
      {
              t_mat[i][j]=0.0;
              l_mat[i][j]=0.0;
              u_mat[i][j]=0.0;
      }
    }
    t_mat[0][0]=1.0;
    t_mat[5][5]=1.0;
        
    t_mat[1][0]=0.32768;
    t_mat[4][5]=t_mat[1][0];
        
    t_mat[1][1]=0.4096;
    t_mat[4][4]=t_mat[1][1];
        
    t_mat[1][2]=0.2048;
    t_mat[4][3]=t_mat[1][2];
        
    t_mat[1][3]=0.0512;
    t_mat[4][2]=t_mat[1][3];
        
    t_mat[1][4]=0.0064;
    t_mat[4][1]=t_mat[1][4];
        
    t_mat[1][5]=0.00032;
    t_mat[4][0]=t_mat[1][5];
        
    t_mat[2][0]=0.07776;
    t_mat[3][5]=t_mat[2][0];
        
    t_mat[2][1]=0.2592;
    t_mat[3][4]=t_mat[2][1];
        
    t_mat[2][2]=0.3456;
    t_mat[3][3]=t_mat[2][2];
        
    t_mat[2][3]=0.2304;
    t_mat[3][2]=t_mat[2][3];
        
    t_mat[2][4]=0.0768;
    t_mat[3][1]=t_mat[2][4];
        
    t_mat[2][5]=0.01024;
    t_mat[3][0]=t_mat[2][5];  

    for(i=0;i&lt;6;i++)
    {
        l_mat[i][i]=1.0;
    }
    u_mat[0][0]=1.0;
    u_mat[5][5]=1.0;  
    for(i=1;i&lt;6;i++)
    {
        l_mat[i][0]=t_mat[i][0];
        u_mat[1][i]=t_mat[1][i];
    }
    l_mat[2][1]=t_mat[2][1]/t_mat[1][1];
    l_mat[3][1]=t_mat[3][1]/t_mat[1][1];
    l_mat[4][1]=t_mat[4][1]/t_mat[1][1];
        
    u_mat[2][2]=t_mat[2][2]-l_mat[2][1]*u_mat[1][2];
    u_mat[2][3]=t_mat[2][3]-l_mat[2][1]*u_mat[1][3];
    u_mat[2][4]=t_mat[2][4]-l_mat[2][1]*u_mat[1][4];
    u_mat[2][5]=t_mat[2][5]-l_mat[2][1]*u_mat[1][5];
        
    l_mat[3][2]=(t_mat[3][2]-l_mat[3][1]*u_mat[1][2])/u_mat[2][2];
    l_mat[4][2]=(t_mat[4][2]-l_mat[4][1]*u_mat[1][2])/u_mat[2][2];
        
    u_mat[3][3]=t_mat[3][3]-l_mat[3][1]*u_mat[1][3]-l_mat[3][2]*u_mat[2][3];
    u_mat[3][4]=t_mat[3][4]-l_mat[3][1]*u_mat[1][4]-l_mat[3][2]*u_mat[2][4];
    u_mat[3][5]=t_mat[3][5]-l_mat[3][1]*u_mat[1][5]-l_mat[3][2]*u_mat[2][5];
        
    l_mat[4][3]=(t_mat[4][3]-l_mat[4][1]*u_mat[1][3]-l_mat[4][2]*u_mat[2][3]-l_mat[4][3]*u_mat[3][4])/u_mat[3][3];
    u_mat[4][4]=t_mat[4][4]-l_mat[4][1]*u_mat[1][4]-l_mat[4][2]*u_mat[2][4]-l_mat[4][3]*u_mat[3][4];
    u_mat[4][5]=t_mat[4][5]-l_mat[4][1]*u_mat[1][5]-l_mat[4][2]*u_mat[2][5]-l_mat[4][3]*u_mat[3][5];
    
    //restart: ;
       // 顯示一個擁有 6 個選項的表單, options is the menu items
       // uc1603 的第二個輸入變數為 0, 表示沒有內定選項
       // uc1603 傳回 2 表示使用者按下取消
       //
       // uc1603 傳回Return:
       // 1 = Back
       // 2 = Cancel Operation
       // 5-18 = The given menu item was selected
       // 19 = Disallowed state, unable to bring up dialog
    resp = uc1603 ("Standard Imperial Involute Gear Systems to ANSI &amp; AGMA", 0, options, 6 );

    if (resp == 2) goto ending1;
       // 若使用者選擇 6 個選項中的一個, 則會回應三個欄位的輸入
    prompt_for_three_numbers("Gear Data", "Pitch Diameter", "No of Teeth", "Tooth length",
            &amp;pitch_dia, &amp;teeth_no, &amp;tooth_length);
       uc1601("After get three numbers",1);
       // 由於 uc1603 傳回第一個選項其值為 5, 因此將傳回值減 4, 可以讓第一選項其 style1 = 1
    style1 = resp - 4;
    pitch_rad = pitch_dia/2.0;
       // 根據使用者所選的正齒輪參數進行繪圖
    switch (style1)
    {
    case 1:
        // Full-depth, 14.5 deg press angle
        pressure_angle = 14.5;
        base_rad = pitch_rad*cos(pressure_angle*DEGRA);
        dia_pitch = teeth_no/pitch_dia;
        addendum = 1.0/dia_pitch;
        deddendum = 1.157/dia_pitch;
        clearance = 0.157/dia_pitch;
        max_fillet = 1.5*clearance;
        break;
    case 2:
        // Full-depth, 20 deg press angle
        pressure_angle = 20.0;
        base_rad = pitch_rad*cos(pressure_angle*DEGRA);
        dia_pitch = teeth_no/pitch_dia;
        addendum = 1.0/dia_pitch;
        deddendum = 1.157/dia_pitch;
        clearance = 0.157/dia_pitch;
        max_fillet = 1.5*clearance;
        break;
    case 3:
        // Stub, 20 deg pressure angle
        pressure_angle = 20.0;
        base_rad = pitch_rad*cos(pressure_angle*DEGRA);
        dia_pitch = teeth_no/pitch_dia;
        addendum = 0.8/dia_pitch;
        deddendum = 1.0/dia_pitch;
        clearance = 0.2/dia_pitch;
        max_fillet = 1.5*clearance;
        break;
    case 4:
        // Coarse-pitch 20 deg press angle
        pressure_angle = 20.0;
        base_rad = pitch_rad*cos(pressure_angle*DEGRA);
        dia_pitch = teeth_no/pitch_dia;
        addendum = 1.0/dia_pitch;
        deddendum = 1.25/dia_pitch;
        clearance = 0.25/dia_pitch;
        max_fillet = 0.3/dia_pitch;
        break;
    case 5:
        // Coarse-pitch 25 deg press angle
        pressure_angle = 25.0;
        base_rad = pitch_rad*cos(pressure_angle*DEGRA);
        dia_pitch = teeth_no/pitch_dia;
        addendum = 1.0/dia_pitch;
        deddendum = 1.25/dia_pitch;
        clearance = 0.25/dia_pitch;
        max_fillet = 0.3/dia_pitch;
        break;
    case 6:
        // Fine-pitch 20 deg press angle
        pressure_angle = 20.0;
        base_rad = pitch_rad*cos(pressure_angle*DEGRA);
        dia_pitch = teeth_no/pitch_dia;
        addendum = 1.0/dia_pitch;
        deddendum = 0.002+1.2/dia_pitch;
        clearance = 0.002+0.2/dia_pitch;
        max_fillet = 0.3/dia_pitch;
        break;
    }
    
    root_rad = pitch_rad - deddendum;
    gear_od = (pitch_rad + addendum)*2.0;

//	Determine od involute angle
    
    sub1 = (pitch_rad+addendum)/base_rad;
    theta2 = sqrt(sub1*sub1-1.0);

    sprintf(gear_od_st,"%f",gear_od);
    sprintf(tooth_length_st,"TOOTH_LENGTH1=%f",tooth_length);
       // 根據齒輪尺寸, 繪製一個圓柱
       // 建立一個全新的 cylinder
       // 圓心, 高度, 直徑
    UF_MODL_create_cyl1 (UF_NULLSIGN, origin,tooth_length_st, gear_od_st, 
            zc_dir, &amp;cyl_tag);
       /*
    sprintf(start_limit_st,"0.0");
    //sprintf(end_limit_st,"TOOTH_LENGTH1");
       sprintf(end_limit_st,"2.0");
    strcpy(&amp;limit1[0][0],start_limit_st);
    strcpy(&amp;limit1[1][0],end_limit_st);
       */
       // root_rad 為齒根圓半徑, base_rad 則為基圓半徑
    if (root_rad &lt; base_rad) method = 0;
    if (root_rad &gt; base_rad) method = 1;
       uc1601("switch method",1);
       // 問題就在 switch method 之後
    switch (method)
    {
    case 0:
            uc1601("method is 0",1);
        // Create normal section splines
        theta1 = 0.0;
        theta3 = 0.0;
        delta_theta = (theta2-theta1)/5.0; 
        for (i=0;i&lt;6;i++)
        {
            b_mat[i][0] = base_rad*sin(theta3)- base_rad*theta3*cos(theta3);
            b_mat[i][1] = base_rad*cos(theta3)+ base_rad*theta3*sin(theta3);
            theta3 = theta3 + delta_theta;
        }
        y_mat[0][0] = b_mat[0][0]/l_mat[0][0];
        y_mat[0][1] = b_mat[0][1]/l_mat[0][0];
                
        y_mat[1][0]=(b_mat[1][0]-l_mat[1][0]*y_mat[0][0])/l_mat[1][1];
        y_mat[1][1]=(b_mat[1][1]-l_mat[1][0]*y_mat[0][1])/l_mat[1][1];
                
        y_mat[2][0]=(b_mat[2][0]-l_mat[2][0]*y_mat[0][0]-l_mat[2][1]*y_mat[1][0])/l_mat[2][2];
        y_mat[2][1]=(b_mat[2][1]-l_mat[2][0]*y_mat[0][1]-l_mat[2][1]*y_mat[1][1])/l_mat[2][2];
                
        y_mat[3][0]=(b_mat[3][0]-l_mat[3][0]*y_mat[0][0]-l_mat[3][1]*y_mat[1][0]-l_mat[3][2]*y_mat[2][0])/l_mat[3][3];
        y_mat[3][1]=(b_mat[3][1]-l_mat[3][0]*y_mat[0][1]-l_mat[3][1]*y_mat[1][1]-l_mat[3][2]*y_mat[2][1])/l_mat[3][3];
                
        y_mat[4][0]=(b_mat[4][0]-l_mat[4][0]*y_mat[0][0]-l_mat[4][1]*y_mat[1][0]-l_mat[4][2]*y_mat[2][0]-
                            l_mat[4][3]*y_mat[3][0])/l_mat[4][4];
        y_mat[4][1]=(b_mat[4][1]-l_mat[4][0]*y_mat[0][1]-l_mat[4][1]*y_mat[1][1]-l_mat[4][2]*y_mat[2][1]-
                            l_mat[4][3]*y_mat[3][1])/l_mat[4][4];
                
        y_mat[5][0]=(b_mat[5][0]-l_mat[5][0]*y_mat[0][0]-l_mat[5][1]*y_mat[1][0]-l_mat[5][2]*y_mat[2][0]-
                            l_mat[5][3]*y_mat[3][0]-l_mat[5][4]*y_mat[4][0])/l_mat[5][5];
        y_mat[5][1]=(b_mat[5][1]-l_mat[5][0]*y_mat[0][1]-l_mat[5][1]*y_mat[1][1]-l_mat[5][2]*y_mat[2][1]-
                            l_mat[5][3]*y_mat[3][1]-l_mat[5][4])/l_mat[5][5];
        poles[5][0]=y_mat[5][0];
        poles[5][1]=y_mat[5][1];
                
        poles[4][0]=(y_mat[4][0]-u_mat[4][5]*poles[5][0])/u_mat[4][4];
        poles[4][1]=(y_mat[4][1]-u_mat[4][5]*poles[5][1])/u_mat[4][4];
                
        poles[3][0]=(y_mat[3][0]-u_mat[3][4]*poles[4][0]-u_mat[3][5]*poles[5][0])/u_mat[3][3];
        poles[3][1]=(y_mat[3][1]-u_mat[3][4]*poles[4][1]-u_mat[3][5]*poles[5][1])/u_mat[3][3];
                
        poles[2][0]=(y_mat[2][0]-u_mat[2][3]*poles[3][0]-u_mat[2][4]*poles[4][0]-u_mat[2][5]*poles[5][0])/u_mat[2][2];
        poles[2][1]=(y_mat[2][1]-u_mat[2][3]*poles[3][1]-u_mat[2][4]*poles[4][1]-u_mat[2][5]*poles[5][1])/u_mat[2][2];
                
        poles[1][0]=(y_mat[1][0]-u_mat[1][2]*poles[2][0]-u_mat[1][3]*poles[3][0]-u_mat[1][4]*poles[4][0]-
                    u_mat[1][5]*poles[5][0])/u_mat[1][1];
        poles[1][1]=(y_mat[1][1]-u_mat[1][2]*poles[2][1]-u_mat[1][3]*poles[3][1]-u_mat[1][4]*poles[4][1]-
                    u_mat[1][5]*poles[5][1])/u_mat[1][1];
                
        poles[0][0]=y_mat[0][0]-u_mat[0][1]*poles[1][0]-u_mat[0][2]*poles[2][0]-u_mat[0][3]*poles[3][0]-
                    u_mat[0][4]*poles[4][0]-u_mat[0][5]*poles[5][0];
        poles[0][1]=y_mat[0][1]-u_mat[0][1]*poles[1][1]-u_mat[0][2]*poles[2][1]-u_mat[0][3]*poles[3][1]-
                    u_mat[0][4]*poles[4][1]-u_mat[0][5]*poles[5][1];
        poles[1][0]=0.0;
        poles[0][0]=0.0;
               
 //  Calculate rotation angle
        rad2 = pitch_dia/2.0;
        sub1 = rad2/base_rad;
        sub1sq = sub1*sub1;
        theta_p = sqrt(sub1sq-1.0);
        x_pitch = base_rad*sin(theta_p)-base_rad*theta_p*cos(theta_p);
        rot_angle = PI/(2.0*teeth_no) - asin(x_pitch/rad2);
        for (i=0;i&lt;6;i++)
        {
            poles1[i][0] = poles[i][0]*cos(-rot_angle)-poles[i][1]*sin(-rot_angle);
            poles1[i][1] = poles[i][0]*sin(-rot_angle)+poles[i][1]*cos(-rot_angle);
            poles1[i][2] = 0.0;
        }  
        for (i=0;i&lt;6;i++)
        {
            poles2[i][0] = -poles1[i][0];
            poles2[i][1] = poles1[i][1];
            poles2[i][2] = 0.0;
        }
        pole_array[0] = poles1[0][0];
        pole_array[1] = poles1[0][1];
        pole_array[2] = 0.0;
        pole_array[3] = 1.0;
        pole_array[4] = poles1[1][0];
        pole_array[5] = poles1[1][1];
        pole_array[6] = 0.0;
        pole_array[7] = 1.0;
        pole_array[8] = poles1[2][0];
        pole_array[9] = poles1[2][1];
        pole_array[10] = 0.0;
        pole_array[11] = 1.0;
        pole_array[12] = poles1[3][0];
        pole_array[13] = poles1[3][1];
        pole_array[14] = 0.0;
        pole_array[15] = 1.0;
        pole_array[16] = poles1[4][0];
        pole_array[17] = poles1[4][1];
        pole_array[18] = 0.0;
        pole_array[19] = 1.0;
        pole_array[20] = poles1[5][0];
        pole_array[21] = poles1[5][1];
        pole_array[22] = 0.0;
        pole_array[23] = 1.0;
              // 建立齒形曲線
              for(i = ORDER; i &lt; POLES ; i++){
                   knotseq[i] = (i-ORDER+1)*delta_u;
              } 
              uc1601("Going to first spline creation",1);
              int m;
              char failmessage[256];
        m = UF_CALL(UF_MODL_create_spline(POLES, ORDER, knotseq, pole_array,
                        &amp;lh_spline, &amp;k_fixup, &amp;p_fixup));
              UF_get_fail_message(m,failmessage);
              uc1601(failmessage,1);
              
        pole_array[0] = poles2[0][0];
        pole_array[1] = poles2[0][1];
        pole_array[2] = 0.0;
        pole_array[3] = 1.0;
        pole_array[4] = poles2[1][0];
        pole_array[5] = poles2[1][1];
        pole_array[6] = 0.0;
        pole_array[7] = 1.0;
        pole_array[8] = poles2[2][0];
        pole_array[9] = poles2[2][1];
        pole_array[10] = 0.0;
        pole_array[11] = 1.0;
        pole_array[12] = poles2[3][0];
        pole_array[13] = poles2[3][1];
        pole_array[14] = 0.0;
        pole_array[15] = 1.0;
        pole_array[16] = poles2[4][0];
        pole_array[17] = poles2[4][1];
        pole_array[18] = 0.0;
        pole_array[19] = 1.0;
        pole_array[20] = poles2[5][0];
        pole_array[21] = poles2[5][1];
        pole_array[22] = 0.0;
        pole_array[23] = 1.0;
        m = UF_CALL(UF_MODL_create_spline(POLES,ORDER, knotseq, pole_array,
                        &amp;rh_spline, &amp;k_fixup, &amp;p_fixup));
              UF_get_fail_message(m,failmessage);
              uc1601(failmessage,1);              
              
        point1[0] = 0.0;
        point1[1] = pitch_dia/2.0 + addendum;
        point1[2] = 0.0;
              // 建立通過三點的圓弧
        UF_CURVE_create_arc_thru_3pts ( create_flag, &amp;poles1[5][0],  point1, &amp;poles2[5][0], &amp;od_arc_tag);
        UF_MODL_ask_curve_props(lh_spline, 0.0, &amp;point1[0], tangent1, junk3, junk3, junk3,junk3);
        UF_VEC3_angle_between(vec_x,&amp;poles1[0][0],zc_dir,&amp;start_angle);
        point2[0] = root_rad*cos(start_angle);
        point2[1] = root_rad*sin(start_angle);
        point2[2] = 0.0;
        ln1.start_point[0] = point2[0];
        ln1.start_point[1] = point2[1];
        ln1.start_point[2] = 0.0;
        ln1.end_point[0] = point1[0];
        ln1.end_point[1] = point1[1];
        ln1.end_point[2] = 0.0;
              // 建立直線
        UF_CALL(UF_CURVE_create_line(&amp;ln1,&amp;lh_base_spline));
        UF_MODL_ask_curve_props(rh_spline, 0.0, &amp;point1[0], tangent1, junk3, junk3, junk3,junk3);
        UF_VEC3_angle_between(vec_x,&amp;poles2[0][0],zc_dir,&amp;end_angle);
        point3[0] = root_rad*cos(end_angle);
        point3[1] = root_rad*sin(end_angle);
        point3[2] = 0.0;
        ln1.start_point[0] = point3[0];
        ln1.start_point[1] = point3[1];
        ln1.start_point[2] = 0.0;
        ln1.end_point[0] = point1[0];
        ln1.end_point[1] = point1[1];
        ln1.end_point[2] = 0.0;
        UF_CALL(UF_CURVE_create_line(&amp;ln1,&amp;rh_base_spline));
        UF_VEC3_distance(point3, point1, &amp;length1);
        point1[0] = 0.0;
        point1[1] = root_rad;
        point1[2] = 0.0;
        UF_CURVE_create_arc_thru_3pts ( create_flag, point2,  point1, point3, &amp;root_arc_tag);
        if (length1 &gt; max_fillet)
        {
            curve_obj[0] = root_arc_tag;
            curve_obj[1] = lh_base_spline;
            point1[0] = poles1[0][0] - max_fillet;
            point1[1] = poles1[0][1] - max_fillet;
            point1[2] = 0.0;
            trim_opts[0] = TRUE;
            trim_opts[1] = TRUE;
            arc_opts[0] = UF_CURVE_TANGENT_OUTSIDE;
            UF_CURVE_create_fillet (UF_CURVE_2_CURVE, curve_obj, point1, 
                max_fillet, trim_opts, arc_opts, &amp;lh_fillet); 
            curve_obj[0] = rh_base_spline;
            curve_obj[1] = root_arc_tag;
            point1[0] = poles2[0][0] + max_fillet;
            point1[1] = poles2[0][1] - max_fillet;
            point1[2] = 0.0;
            trim_opts[0] = TRUE;
            trim_opts[1] = TRUE;
            arc_opts[1] = UF_CURVE_TANGENT_OUTSIDE;
            UF_CURVE_create_fillet (UF_CURVE_2_CURVE, curve_obj, point1, 
                max_fillet, trim_opts, arc_opts, &amp;rh_fillet);
            UF_CALL(UF_MODL_create_list(&amp;loop_list));
            UF_CALL(UF_MODL_put_list_item(loop_list, od_arc_tag));
            UF_CALL(UF_MODL_put_list_item(loop_list, lh_spline));
            UF_CALL(UF_MODL_put_list_item(loop_list, lh_base_spline));
            UF_CALL(UF_MODL_put_list_item(loop_list, lh_fillet));
            UF_CALL(UF_MODL_put_list_item(loop_list, root_arc_tag));
            UF_CALL(UF_MODL_put_list_item(loop_list, rh_fillet));
            UF_CALL(UF_MODL_put_list_item(loop_list, rh_base_spline));
            UF_CALL(UF_MODL_put_list_item(loop_list, rh_spline));
                     
                     // 確定問題就出在此一除料
                     /*
extern int UF_MODL_create_extruded1 (
uf_list_p_t objects,
char * taper_angle,
char * limit[ 2 ],
double point[ 3 ],
double direction[ 3 ],
UF_FEATURE_SIGN sign,
tag_t target_body,
uf_list_p_t * features );
uf_list_p_t 	objects	Input	List of objects to be extruded.
char * 	taper_angle	Input	Taper angle (in degrees).
char * 	limit[ 2 ]	Input	Limit of extrusion. This is declared as:
char *limit[2]. The first value is the start value of
the extrusion and the second value is the end of the
extrusion (see the example program).
double 	point[ 3 ]	Input	not used
double 	direction[ 3 ]	Input	Extrusion axis.
UF_FEATURE_SIGN 	sign	Input	The sign of the operation to be performed.
UF_NULLSIGN = create new target solid
UF_POSITIVE = add to target solid
UF_NEGATIVE = subtract from target solid
UF_UNSIGNED = intersect with target solid
tag_t 	target_body	Input	Target body to perform Boolean
uf_list_p_t * 	features	Output to be freed	List of feature identifiers created. This list
must be freed by calling UF_MODL_delete_list.
                      */
            UF_MODL_create_extruded1 (loop_list, taper_angle, limit1,
                          origin, zc_dir, UF_NEGATIVE , cyl_tag, &amp;features);

            UF_CALL(UF_MODL_ask_list_item(features, 0 , &amp;tooth_gap_tag));
            UF_MODL_delete_list(&amp;loop_list);
            UF_MODL_delete_list(&amp;features);
            UF_CALL(UF_MODL_create_list(&amp;loop_list));
            UF_CALL(UF_MODL_put_list_item(loop_list, tooth_gap_tag));
            UF_OBJ_set_blank_status (od_arc_tag, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (lh_spline, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (lh_base_spline, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (lh_fillet, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (root_arc_tag, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (rh_fillet, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (rh_base_spline, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (rh_spline, UF_OBJ_BLANKED);
        }
        else if (length1 &lt; max_fillet)
        {
            curve_obj[0] = root_arc_tag;
            curve_obj[1] = lh_spline;
            point1[0] = poles1[0][0] - max_fillet;
            point1[1] = poles1[0][1] + max_fillet;
            point1[2] = 0.0;
            trim_opts[0] = TRUE;
            trim_opts[1] = TRUE;
            arc_opts[0] = UF_CURVE_TANGENT_OUTSIDE;
            UF_CURVE_create_fillet (UF_CURVE_2_CURVE, curve_obj, point1, 
                    max_fillet, trim_opts, arc_opts, &amp;lh_fillet); 
            curve_obj[0] = rh_spline;
            curve_obj[1] = root_arc_tag;
            point1[0] = poles2[0][0] + max_fillet;
            point1[1] = poles2[0][1] + max_fillet;
            point1[2] = 0.0;
            trim_opts[0] = TRUE;
            trim_opts[1] = TRUE;
            arc_opts[1] = UF_CURVE_TANGENT_OUTSIDE;
            UF_CURVE_create_fillet (UF_CURVE_2_CURVE, curve_obj, point1, 
                    max_fillet, trim_opts, arc_opts, &amp;rh_fillet);
            UF_OBJ_delete_object (lh_base_spline);
            UF_OBJ_delete_object (rh_base_spline);
            UF_CALL(UF_MODL_create_list(&amp;loop_list));
            UF_CALL(UF_MODL_put_list_item(loop_list, od_arc_tag));
            UF_CALL(UF_MODL_put_list_item(loop_list, lh_spline));
            UF_CALL(UF_MODL_put_list_item(loop_list, lh_fillet));
            UF_CALL(UF_MODL_put_list_item(loop_list, root_arc_tag));
            UF_CALL(UF_MODL_put_list_item(loop_list, rh_fillet));
            UF_CALL(UF_MODL_put_list_item(loop_list, rh_spline));
            UF_MODL_create_extruded1 (loop_list, taper_angle, limit1,
                          origin, zc_dir, UF_NEGATIVE , cyl_tag, &amp;features);
            UF_CALL(UF_MODL_ask_list_item(features, 0 , &amp;tooth_gap_tag));
            UF_MODL_delete_list(&amp;loop_list);
            UF_MODL_delete_list(&amp;features);
            UF_CALL(UF_MODL_create_list(&amp;loop_list));
            UF_CALL(UF_MODL_put_list_item(loop_list, tooth_gap_tag));
            UF_OBJ_set_blank_status (od_arc_tag, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (lh_spline, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (lh_fillet, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (root_arc_tag, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (rh_fillet, UF_OBJ_BLANKED);
            UF_OBJ_set_blank_status (rh_spline, UF_OBJ_BLANKED);
        }
      break;
          
    case 1:
        sub2 = (pitch_rad-deddendum)/base_rad;
        sub2sq = sub2*sub2;
        theta1 = sqrt(sub2sq - 1.0);
        theta3 = theta1;
        delta_theta = (theta2-theta1)/5.0; 
        for (i=0;i&lt;6;i++)
        {
            b_mat[i][0] = base_rad*sin(theta3)- base_rad*theta3*cos(theta3);
            b_mat[i][1] = base_rad*cos(theta3)+ base_rad*theta3*sin(theta3);
            theta3 = theta3 + delta_theta;
        } 
        y_mat[0][0] = b_mat[0][0]/l_mat[0][0];
        y_mat[0][1] = b_mat[0][1]/l_mat[0][0];
                
        y_mat[1][0]=(b_mat[1][0]-l_mat[1][0]*y_mat[0][0])/l_mat[1][1];
        y_mat[1][1]=(b_mat[1][1]-l_mat[1][0]*y_mat[0][1])/l_mat[1][1];
                
        y_mat[2][0]=(b_mat[2][0]-l_mat[2][0]*y_mat[0][0]-l_mat[2][1]*y_mat[1][0])/l_mat[2][2];
        y_mat[2][1]=(b_mat[2][1]-l_mat[2][0]*y_mat[0][1]-l_mat[2][1]*y_mat[1][1])/l_mat[2][2];
                
        y_mat[3][0]=(b_mat[3][0]-l_mat[3][0]*y_mat[0][0]-l_mat[3][1]*y_mat[1][0]-l_mat[3][2]*y_mat[2][0])/l_mat[3][3];
        y_mat[3][1]=(b_mat[3][1]-l_mat[3][0]*y_mat[0][1]-l_mat[3][1]*y_mat[1][1]-l_mat[3][2]*y_mat[2][1])/l_mat[3][3];
                
        y_mat[4][0]=(b_mat[4][0]-l_mat[4][0]*y_mat[0][0]-l_mat[4][1]*y_mat[1][0]-l_mat[4][2]*y_mat[2][0]-
                            l_mat[4][3]*y_mat[3][0])/l_mat[4][4];
        y_mat[4][1]=(b_mat[4][1]-l_mat[4][0]*y_mat[0][1]-l_mat[4][1]*y_mat[1][1]-l_mat[4][2]*y_mat[2][1]-
                            l_mat[4][3]*y_mat[3][1])/l_mat[4][4];
                
        y_mat[5][0]=(b_mat[5][0]-l_mat[5][0]*y_mat[0][0]-l_mat[5][1]*y_mat[1][0]-l_mat[5][2]*y_mat[2][0]-
                            l_mat[5][3]*y_mat[3][0]-l_mat[5][4]*y_mat[4][0])/l_mat[5][5];
        y_mat[5][1]=(b_mat[5][1]-l_mat[5][0]*y_mat[0][1]-l_mat[5][1]*y_mat[1][1]-l_mat[5][2]*y_mat[2][1]-
                            l_mat[5][3]*y_mat[3][1]-l_mat[5][4])/l_mat[5][5];
        poles[5][0]=y_mat[5][0];
        poles[5][1]=y_mat[5][1];
        poles[4][0]=(y_mat[4][0]-u_mat[4][5]*poles[5][0])/u_mat[4][4];
        poles[4][1]=(y_mat[4][1]-u_mat[4][5]*poles[5][1])/u_mat[4][4];
        poles[3][0]=(y_mat[3][0]-u_mat[3][4]*poles[4][0]-u_mat[3][5]*poles[5][0])/u_mat[3][3];
        poles[3][1]=(y_mat[3][1]-u_mat[3][4]*poles[4][1]-u_mat[3][5]*poles[5][1])/u_mat[3][3];
        poles[2][0]=(y_mat[2][0]-u_mat[2][3]*poles[3][0]-u_mat[2][4]*poles[4][0]-u_mat[2][5]*poles[5][0])/u_mat[2][2];
        poles[2][1]=(y_mat[2][1]-u_mat[2][3]*poles[3][1]-u_mat[2][4]*poles[4][1]-u_mat[2][5]*poles[5][1])/u_mat[2][2];
        poles[1][0]=(y_mat[1][0]-u_mat[1][2]*poles[2][0]-u_mat[1][3]*poles[3][0]-u_mat[1][4]*poles[4][0]-
                    u_mat[1][5]*poles[5][0])/u_mat[1][1];
        poles[1][1]=(y_mat[1][1]-u_mat[1][2]*poles[2][1]-u_mat[1][3]*poles[3][1]-u_mat[1][4]*poles[4][1]-
                    u_mat[1][5]*poles[5][1])/u_mat[1][1];
        poles[0][0]=y_mat[0][0]-u_mat[0][1]*poles[1][0]-u_mat[0][2]*poles[2][0]-u_mat[0][3]*poles[3][0]-
                    u_mat[0][4]*poles[4][0]-u_mat[0][5]*poles[5][0];
        poles[0][1]=y_mat[0][1]-u_mat[0][1]*poles[1][1]-u_mat[0][2]*poles[2][1]-u_mat[0][3]*poles[3][1]-
                    u_mat[0][4]*poles[4][1]-u_mat[0][5]*poles[5][1];
 //  Calculate rotation angle
        rad2 = pitch_dia/2.0;
        sub1 = rad2/base_rad;
        sub1sq = sub1*sub1;
        theta_p = sqrt(sub1sq-1.0);
        x_pitch = base_rad*sin(theta_p)-base_rad*theta_p*cos(theta_p);
        rot_angle = PI/(2.0*teeth_no) - asin(x_pitch/rad2);
        for (i=0;i&lt;6;i++)
        {
            poles1[i][0] = poles[i][0]*cos(-rot_angle)-poles[i][1]*sin(-rot_angle);
            poles1[i][1] = poles[i][0]*sin(-rot_angle)+poles[i][1]*cos(-rot_angle);
            poles1[i][2] = 0.0;
        }  
        for (i=0;i&lt;6;i++)
        {
            poles2[i][0] = -poles1[i][0];
            poles2[i][1] = poles1[i][1];
            poles2[i][2] = 0.0;
        }
        pole_array[0] = poles1[0][0];
        pole_array[1] = poles1[0][1];
        pole_array[2] = 0.0;
        pole_array[3] = 1.0;
        pole_array[4] = poles1[1][0];
        pole_array[5] = poles1[1][1];
        pole_array[6] = 0.0;
        pole_array[7] = 1.0;
        pole_array[8] = poles1[2][0];
        pole_array[9] = poles1[2][1];
        pole_array[10] = 0.0;
        pole_array[11] = 1.0;
        pole_array[12] = poles1[3][0];
        pole_array[13] = poles1[3][1];
        pole_array[14] = 0.0;
        pole_array[15] = 1.0;
        pole_array[16] = poles1[4][0];
        pole_array[17] = poles1[4][1];
        pole_array[18] = 0.0;
        pole_array[19] = 1.0;
        pole_array[20] = poles1[5][0];
        pole_array[21] = poles1[5][1];
        pole_array[22] = 0.0;
        pole_array[23] = 1.0;
        UF_CALL(UF_MODL_create_spline(POLES,ORDER,knotseq,pole_array,
                        &amp;lh_spline, &amp;k_fixup,&amp;p_fixup));
        pole_array[0] = poles2[0][0];
        pole_array[1] = poles2[0][1];
        pole_array[2] = 0.0;
        pole_array[3] = 1.0;
        pole_array[4] = poles2[1][0];
        pole_array[5] = poles2[1][1];
        pole_array[6] = 0.0;
        pole_array[7] = 1.0;
        pole_array[8] = poles2[2][0];
        pole_array[9] = poles2[2][1];
        pole_array[10] = 0.0;
        pole_array[11] = 1.0;
        pole_array[12] = poles2[3][0];
        pole_array[13] = poles2[3][1];
        pole_array[14] = 0.0;
        pole_array[15] = 1.0;
        pole_array[16] = poles2[4][0];
        pole_array[17] = poles2[4][1];
        pole_array[18] = 0.0;
        pole_array[19] = 1.0;
        pole_array[20] = poles2[5][0];
        pole_array[21] = poles2[5][1];
        pole_array[22] = 0.0;
        pole_array[23] = 1.0;
        UF_CALL(UF_MODL_create_spline(POLES,ORDER,knotseq,pole_array,
                        &amp;rh_spline, &amp;k_fixup,&amp;p_fixup));
        point1[0] = 0.0;
        point1[1] = pitch_dia/2.0 + addendum;
        point1[2] = 0.0;
        UF_CURVE_create_arc_thru_3pts ( create_flag, &amp;poles1[5][0],  point1, &amp;poles2[5][0], &amp;od_arc_tag);
        point1[0] = 0.0;
        point1[1] = root_rad;
        point1[2] = 0.0;
        UF_CURVE_create_arc_thru_3pts ( create_flag, &amp;poles1[0][0],  point1, &amp;poles2[0][0], &amp;root_arc_tag);
        curve_obj[0] = root_arc_tag;
        curve_obj[1] = lh_spline;
        point1[0] = poles1[0][0];
        point1[1] = poles1[0][1] + max_fillet/2.0;
        point1[2] = 0.0;
        trim_opts[0] = TRUE;
        trim_opts[1] = TRUE;
        arc_opts[0] = UF_CURVE_TANGENT_OUTSIDE;
              // 建立倒圓角繪圖
        UF_CURVE_create_fillet (UF_CURVE_2_CURVE, curve_obj, point1, max_fillet, trim_opts, arc_opts, &amp;lh_fillet);
        curve_obj[0] = rh_spline;
        curve_obj[1] = root_arc_tag;
        point1[0] = poles2[0][0] ;
        point1[1] = poles2[0][1] + max_fillet/2.0;
        point1[2] = 0.0;
        trim_opts[0] = TRUE;
        trim_opts[1] = TRUE;
        arc_opts[1] = UF_CURVE_TANGENT_OUTSIDE;
              // 建立倒圓角繪圖
        UF_CURVE_create_fillet (UF_CURVE_2_CURVE, curve_obj, point1, max_fillet, trim_opts, arc_opts, &amp;rh_fillet);
        
              // 將要進行擠出除料的草圖輪廓存入 loop_list
              UF_CALL(UF_MODL_create_list(&amp;loop_list));
        UF_CALL(UF_MODL_put_list_item(loop_list, od_arc_tag));
        UF_CALL(UF_MODL_put_list_item(loop_list, lh_spline));
        UF_CALL(UF_MODL_put_list_item(loop_list, lh_fillet));
        UF_CALL(UF_MODL_put_list_item(loop_list, root_arc_tag));
        UF_CALL(UF_MODL_put_list_item(loop_list, rh_fillet));
        UF_CALL(UF_MODL_put_list_item(loop_list, rh_spline));
              
              // 針對 loop_list 對 xx 進行擠出除料
        UF_MODL_create_extruded1 (loop_list, taper_angle, limit1,
                          origin, zc_dir, UF_NEGATIVE , cyl_tag, &amp;features);
        UF_CALL(UF_MODL_ask_list_item(features, 0 , &amp;tooth_gap_tag));
        UF_MODL_delete_list(&amp;loop_list);
        UF_MODL_delete_list(&amp;features);
        UF_CALL(UF_MODL_create_list(&amp;loop_list));
        UF_CALL(UF_MODL_put_list_item(loop_list, tooth_gap_tag));
        UF_OBJ_set_blank_status (od_arc_tag, UF_OBJ_BLANKED);
        UF_OBJ_set_blank_status (lh_spline, UF_OBJ_BLANKED);
        UF_OBJ_set_blank_status (lh_fillet, UF_OBJ_BLANKED);
        UF_OBJ_set_blank_status (root_arc_tag, UF_OBJ_BLANKED);
        UF_OBJ_set_blank_status (rh_fillet, UF_OBJ_BLANKED);
        UF_OBJ_set_blank_status (rh_spline, UF_OBJ_BLANKED);
        break;  
    }
    int_teeth_no = teeth_no;
    sprintf(teeth_no_st,"%d", int_teeth_no);
    angle1 = 360.0/teeth_no;
    sprintf(angle_st,"%f",angle1);
       
       // 旋轉陣列複製特徵
    UF_MODL_create_circular_iset (method1, origin, zc_dir, teeth_no_st, angle_st, loop_list, &amp;instances );

    UF_MODL_ask_instance (instances, &amp;instances_feature_list );

    UF_CALL(UF_MODL_ask_list_count(instances_feature_list,&amp;num_instances));
    for (i=0;i&lt;num_instances;i++)
    {
        UF_CALL(UF_MODL_ask_list_item(instances_feature_list,i,&amp;temp_tag));
        teeth_tag[i] = temp_tag;
    }

    UF_MODL_create_set_of_feature ("Teeth_set", &amp;teeth_tag[0], num_instances, 1, &amp;teeth_grp_tag );

    ending1: ;

    UF_CALL(UF_VIEW_fit_view(NULL_TAG, 1.0));	
</t>
<t tx="leo.20220415112717.5">void ufusr(char *param, int *retcode, int param_len)
{
  if (!UF_CALL(UF_initialize()))
  {
    do_ugopen_api();
    UF_CALL(UF_terminate());
  }
}

</t>
<t tx="leo.20220415112717.6">int ufusr_ask_unload(void)
{
  return (UF_UNLOAD_IMMEDIATELY);
}

</t>
<t tx="leo.20220415112816.1"></t>
</tnodes>
</leo_file>
