
:-(compiler_options([xpp_on,canonical])).

/********** Tabling and Trailer Control Variables ************/

#define EQUALITYnone
#define INHERITANCEflogic
#define TABLINGreactive
#define TABLINGvariant
#define CUSTOMnone

#define FLORA_INCREMENTAL_TABLING 

/************************************************************************
  file: headerinc/flrheader_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader.flh"
#include "flora_porting.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrheader_prog_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader_prog.flh"

/***********************************************************************/

#define FLORA_COMPILATION_ID 1

/************************************************************************
  file: headerinc/flrheader2_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
  It has files that must be included in the header and typically
  contain some Prolog statements. Such files cannot appear
  in flrheader.flh because flrheader.flh is included in various restricted
  contexts where Prolog statements are not allowed.

  NOT included in ADDED files (compiled for addition) -- only in LOADED
  ones and in trailers/patch
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

%% flora_tabling_methods is included here to affect preprocessing of
%% flrtable/flrhilogtable.flh dynamically
#include "flora_tabling_methods.flh"

#ifndef FLORA_NONTABLED_MODULE
#include "flrtable.flh"
#include "flrhilogtable.flh"
#endif

#include "flrtable_always.flh"

#include "flrauxtables.flh"

%% include list of tabled predicates
#if defined(FLORA_FLT_FILENAME)
#include FLORA_FLT_FILENAME
#endif

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdyna_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

#include "flrdyndeclare.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrindex_P_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrindex_P.flh"

/***********************************************************************/

#define FLORA_THIS_FILENAME  'ChainBench3.flr'
/************************************************************************
  file: headerinc/flrdefinition_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrdefinition.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrtrailerregistry_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailerregistry.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrrefreshtable_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrrefreshtable.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdynamic_connectors_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrdynamic_connectors.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrimportedcalls_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

%% Loads the file with all the import statements for predicates
%% that must be known everywhere

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBIMPORTEDCALLS))).

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpatch_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrexportcheck.flh"
#include "flrpatch.flh"
/***********************************************************************/

/************************************************************************
  file: headerinc/flropposes_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flropposes.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrhead_dispatch_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrhead_dispatch.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrclause_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCLAUSE))).

/***********************************************************************/

/************************************************************************
  file: ATinc/flrgclp_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_system_module(FLSYSMODGCLP))).

/***********************************************************************/

 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FDB_FILENAME  'ChainBench3.fdb'
?-(:(flrutils,flora_loaddyn_data(FLORA_FDB_FILENAME,FLORA_THIS_MODULE_NAME,'fdb'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FDB_FILENAME,FLORA_THIS_FDB_STORAGE))).
#endif

 
#if !defined(FLORA_FLM_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLM_FILENAME  'ChainBench3.flm'
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(ChainBench3,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLD_FILENAME  'ChainBench3.fld'
?-(:(flrutils,flora_loaddyn_data(FLORA_FLD_FILENAME,FLORA_THIS_MODULE_NAME,'fld'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FLD_FILENAME,FLORA_THIS_FLD_STORAGE))).
#endif

 
#if !defined(FLORA_FLS_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLS_FILENAME  'ChainBench3.fls'
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS_FILENAME,FLORA_THIS_MODULE_NAME,'fls'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rules %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:-(import(from(','(/(add_to_flora_registry,1),/(flora_defeasible_module_registry,2)),flrregistry))).
?-(add_to_flora_registry(flora_defeasible_module_registry(FLORA_THIS_MODULE_NAME,'\\gcl'))).
#define FLORA_DEFEASIBLE_THEORY 
#include flrdefeasible.flh 
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p0,__X0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,4)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,4)))))),flibdefeatdelay('ChainBench3.flr',127,FLORA_WORKSPACE(\\gcl,\\undefeated)(4,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p0,__X0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_0,__X0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,6)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,6)))))),flibdefeatdelay('ChainBench3.flr',129,FLORA_WORKSPACE(\\gcl,\\undefeated)(6,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0,__X0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_1_0,__X0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)))))),flibdefeatdelay('ChainBench3.flr',131,FLORA_WORKSPACE(\\gcl,\\undefeated)(8,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_0,__X0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_1_0,__X0,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)))))),flibdefeatdelay('ChainBench3.flr',133,FLORA_WORKSPACE(\\gcl,\\undefeated)(10,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_0,__X0,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_1_0,__X0,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)))))),flibdefeatdelay('ChainBench3.flr',135,FLORA_WORKSPACE(\\gcl,\\undefeated)(12,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_0,__X0,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_1_0,__X0,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,14)))))),flibdefeatdelay('ChainBench3.flr',137,FLORA_WORKSPACE(\\gcl,\\undefeated)(14,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_0,__X0,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p5_1_0,__X0,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)))))),flibdefeatdelay('ChainBench3.flr',139,FLORA_WORKSPACE(\\gcl,\\undefeated)(16,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_0,__X0,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_0,__X0,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,18)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,18)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,18)))))),flibdefeatdelay('ChainBench3.flr',141,FLORA_WORKSPACE(\\gcl,\\undefeated)(18,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0,__X0,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_2_0,__X0,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','('_$_$_flora''rule_enabled'(20,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,20)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,20)))))),flibdefeatdelay('ChainBench3.flr',143,FLORA_WORKSPACE(\\gcl,\\undefeated)(20,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_0,__X0,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_2_0,__X0,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_flora''rule_enabled'(22,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,22)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,22)))))),flibdefeatdelay('ChainBench3.flr',145,FLORA_WORKSPACE(\\gcl,\\undefeated)(22,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_0,__X0,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_2_0,__X0,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_flora''rule_enabled'(24,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,24)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,24)))))),flibdefeatdelay('ChainBench3.flr',147,FLORA_WORKSPACE(\\gcl,\\undefeated)(24,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_0,__X0,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_2_0,__X0,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_flora''rule_enabled'(26,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,26)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,26)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,26)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,26)))))),flibdefeatdelay('ChainBench3.flr',149,FLORA_WORKSPACE(\\gcl,\\undefeated)(26,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_0,__X0,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p5_2_0,__X0,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_flora''rule_enabled'(28,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,28)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,28)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,28)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,28)))))),flibdefeatdelay('ChainBench3.flr',151,FLORA_WORKSPACE(\\gcl,\\undefeated)(28,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_0,__X0,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_0,__X0,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','('_$_$_flora''rule_enabled'(30,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,30)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,30)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,30)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,30)))))),flibdefeatdelay('ChainBench3.flr',153,FLORA_WORKSPACE(\\gcl,\\undefeated)(30,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0,__X0,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_3_0,__X0,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','('_$_$_flora''rule_enabled'(32,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,32)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,32)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,32)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,32)))))),flibdefeatdelay('ChainBench3.flr',155,FLORA_WORKSPACE(\\gcl,\\undefeated)(32,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_0,__X0,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_3_0,__X0,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','('_$_$_flora''rule_enabled'(34,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,34)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,34)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,34)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,34)))))),flibdefeatdelay('ChainBench3.flr',157,FLORA_WORKSPACE(\\gcl,\\undefeated)(34,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_0,__X0,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_3_0,__X0,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','('_$_$_flora''rule_enabled'(36,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,36)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,36)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,36)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,36)))))),flibdefeatdelay('ChainBench3.flr',159,FLORA_WORKSPACE(\\gcl,\\undefeated)(36,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_0,__X0,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_3_0,__X0,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','('_$_$_flora''rule_enabled'(38,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,38)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,38)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,38)))))),flibdefeatdelay('ChainBench3.flr',161,FLORA_WORKSPACE(\\gcl,\\undefeated)(38,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_0,__X0,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p5_3_0,__X0,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','('_$_$_flora''rule_enabled'(40,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,40)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,40)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,40)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,40)))))),flibdefeatdelay('ChainBench3.flr',163,FLORA_WORKSPACE(\\gcl,\\undefeated)(40,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_0,__X0,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_0,__X0,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','('_$_$_flora''rule_enabled'(42,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,42)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,42)))))),flibdefeatdelay('ChainBench3.flr',165,FLORA_WORKSPACE(\\gcl,\\undefeated)(42,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0,__X0,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_4_0,__X0,'_$ctxt'(_CallerModuleVar,44,__newcontextvar1)),','('_$_$_flora''rule_enabled'(44,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,44)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,44)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,44)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,44)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,44)))))),flibdefeatdelay('ChainBench3.flr',167,FLORA_WORKSPACE(\\gcl,\\undefeated)(44,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_0,__X0,'_$ctxt'(_CallerModuleVar,44,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_4_0,__X0,'_$ctxt'(_CallerModuleVar,46,__newcontextvar1)),','('_$_$_flora''rule_enabled'(46,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,46)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,46)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,46)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,46)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,46)))))),flibdefeatdelay('ChainBench3.flr',169,FLORA_WORKSPACE(\\gcl,\\undefeated)(46,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_0,__X0,'_$ctxt'(_CallerModuleVar,46,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_4_0,__X0,'_$ctxt'(_CallerModuleVar,48,__newcontextvar1)),','('_$_$_flora''rule_enabled'(48,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,48)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,48)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,48)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,48)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,48)))))),flibdefeatdelay('ChainBench3.flr',171,FLORA_WORKSPACE(\\gcl,\\undefeated)(48,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_0,__X0,'_$ctxt'(_CallerModuleVar,48,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_4_0,__X0,'_$ctxt'(_CallerModuleVar,50,__newcontextvar1)),','('_$_$_flora''rule_enabled'(50,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,50)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,50)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,50)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,50)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,50)))))),flibdefeatdelay('ChainBench3.flr',173,FLORA_WORKSPACE(\\gcl,\\undefeated)(50,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_0,__X0,'_$ctxt'(_CallerModuleVar,50,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p5_4_0,__X0,'_$ctxt'(_CallerModuleVar,52,__newcontextvar1)),','('_$_$_flora''rule_enabled'(52,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,52)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,52)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,52)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,52)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,52)))))),flibdefeatdelay('ChainBench3.flr',175,FLORA_WORKSPACE(\\gcl,\\undefeated)(52,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_0,__X0,'_$ctxt'(_CallerModuleVar,52,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p5_0,__X0,'_$ctxt'(_CallerModuleVar,54,__newcontextvar1)),','('_$_$_flora''rule_enabled'(54,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,54)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,54)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,54)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,54)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,54)))))),flibdefeatdelay('ChainBench3.flr',177,FLORA_WORKSPACE(\\gcl,\\undefeated)(54,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p5_0,__X0,'_$ctxt'(_CallerModuleVar,54,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_5_0,__X0,'_$ctxt'(_CallerModuleVar,56,__newcontextvar1)),','('_$_$_flora''rule_enabled'(56,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,56)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,56)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,56)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,56)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,56)))))),flibdefeatdelay('ChainBench3.flr',179,FLORA_WORKSPACE(\\gcl,\\undefeated)(56,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_0,__X0,'_$ctxt'(_CallerModuleVar,56,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_5_0,__X0,'_$ctxt'(_CallerModuleVar,58,__newcontextvar1)),','('_$_$_flora''rule_enabled'(58,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,58)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,58)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,58)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,58)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,58)))))),flibdefeatdelay('ChainBench3.flr',181,FLORA_WORKSPACE(\\gcl,\\undefeated)(58,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_0,__X0,'_$ctxt'(_CallerModuleVar,58,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_5_0,__X0,'_$ctxt'(_CallerModuleVar,60,__newcontextvar1)),','('_$_$_flora''rule_enabled'(60,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,60)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,60)))))),flibdefeatdelay('ChainBench3.flr',183,FLORA_WORKSPACE(\\gcl,\\undefeated)(60,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_0,__X0,'_$ctxt'(_CallerModuleVar,60,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_5_0,__X0,'_$ctxt'(_CallerModuleVar,62,__newcontextvar1)),','('_$_$_flora''rule_enabled'(62,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,62)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,62)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,62)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,62)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,62)))))),flibdefeatdelay('ChainBench3.flr',185,FLORA_WORKSPACE(\\gcl,\\undefeated)(62,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_0,__X0,'_$ctxt'(_CallerModuleVar,62,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p5_5_0,__X0,'_$ctxt'(_CallerModuleVar,64,__newcontextvar1)),','('_$_$_flora''rule_enabled'(64,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,64)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,64)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,64)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,64)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,64)))))),flibdefeatdelay('ChainBench3.flr',187,FLORA_WORKSPACE(\\gcl,\\undefeated)(64,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_0,__X0,'_$ctxt'(_CallerModuleVar,64,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newcontextvar8)),null,[__X0],['X0'])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,129,FLORA_THIS_WORKSPACE(d^tblflapply)(p0,__X0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,4)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,4)))))),null,'_$_$_flora''rule_enabled'(4,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',127,FLORA_WORKSPACE(\\gcl,\\undefeated)(4,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(6,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,130,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0,__X0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,6)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,6)))))),null,'_$_$_flora''rule_enabled'(6,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',129,FLORA_WORKSPACE(\\gcl,\\undefeated)(6,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(8,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,131,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_0,__X0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)))))),null,'_$_$_flora''rule_enabled'(8,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',131,FLORA_WORKSPACE(\\gcl,\\undefeated)(8,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(10,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,132,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_0,__X0,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)))))),null,'_$_$_flora''rule_enabled'(10,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',133,FLORA_WORKSPACE(\\gcl,\\undefeated)(10,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(12,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,133,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_0,__X0,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)))))),null,'_$_$_flora''rule_enabled'(12,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',135,FLORA_WORKSPACE(\\gcl,\\undefeated)(12,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(14,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,134,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_0,__X0,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,14)))))),null,'_$_$_flora''rule_enabled'(14,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',137,FLORA_WORKSPACE(\\gcl,\\undefeated)(14,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(16,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,135,FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_0,__X0,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_1_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)))))),null,'_$_$_flora''rule_enabled'(16,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',139,FLORA_WORKSPACE(\\gcl,\\undefeated)(16,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(18,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,136,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0,__X0,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,18)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,18)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,18)))))),null,'_$_$_flora''rule_enabled'(18,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',141,FLORA_WORKSPACE(\\gcl,\\undefeated)(18,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(20,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,137,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_0,__X0,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,20)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,20)))))),null,'_$_$_flora''rule_enabled'(20,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',143,FLORA_WORKSPACE(\\gcl,\\undefeated)(20,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(22,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,138,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_0,__X0,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,22)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,22)))))),null,'_$_$_flora''rule_enabled'(22,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',145,FLORA_WORKSPACE(\\gcl,\\undefeated)(22,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(24,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,139,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_0,__X0,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,24)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,24)))))),null,'_$_$_flora''rule_enabled'(24,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',147,FLORA_WORKSPACE(\\gcl,\\undefeated)(24,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(26,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,140,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_0,__X0,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,26)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,26)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,26)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,26)))))),null,'_$_$_flora''rule_enabled'(26,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',149,FLORA_WORKSPACE(\\gcl,\\undefeated)(26,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(28,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,141,FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_0,__X0,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,28)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,28)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,28)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_2_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,28)))))),null,'_$_$_flora''rule_enabled'(28,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',151,FLORA_WORKSPACE(\\gcl,\\undefeated)(28,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(30,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,142,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0,__X0,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,30)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,30)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,30)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,30)))))),null,'_$_$_flora''rule_enabled'(30,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',153,FLORA_WORKSPACE(\\gcl,\\undefeated)(30,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(32,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,143,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_0,__X0,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,32)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,32)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,32)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,32)))))),null,'_$_$_flora''rule_enabled'(32,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',155,FLORA_WORKSPACE(\\gcl,\\undefeated)(32,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(34,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,144,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_0,__X0,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,34)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,34)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,34)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,34)))))),null,'_$_$_flora''rule_enabled'(34,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',157,FLORA_WORKSPACE(\\gcl,\\undefeated)(34,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(36,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,145,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_0,__X0,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,36)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,36)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,36)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,36)))))),null,'_$_$_flora''rule_enabled'(36,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',159,FLORA_WORKSPACE(\\gcl,\\undefeated)(36,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(38,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,146,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_0,__X0,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,38)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,38)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,38)))))),null,'_$_$_flora''rule_enabled'(38,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',161,FLORA_WORKSPACE(\\gcl,\\undefeated)(38,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(40,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,147,FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_0,__X0,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,40)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,40)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,40)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_3_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,40)))))),null,'_$_$_flora''rule_enabled'(40,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',163,FLORA_WORKSPACE(\\gcl,\\undefeated)(40,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(42,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,148,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0,__X0,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,42)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,42)))))),null,'_$_$_flora''rule_enabled'(42,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',165,FLORA_WORKSPACE(\\gcl,\\undefeated)(42,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(44,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,149,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_0,__X0,'_$ctxt'(_CallerModuleVar,44,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,44)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,44)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,44)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,44)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,44)))))),null,'_$_$_flora''rule_enabled'(44,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',167,FLORA_WORKSPACE(\\gcl,\\undefeated)(44,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(46,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,150,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_0,__X0,'_$ctxt'(_CallerModuleVar,46,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,46)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,46)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,46)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,46)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,46)))))),null,'_$_$_flora''rule_enabled'(46,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',169,FLORA_WORKSPACE(\\gcl,\\undefeated)(46,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(48,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,151,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_0,__X0,'_$ctxt'(_CallerModuleVar,48,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,48)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,48)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,48)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,48)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,48)))))),null,'_$_$_flora''rule_enabled'(48,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',171,FLORA_WORKSPACE(\\gcl,\\undefeated)(48,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(50,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,152,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_0,__X0,'_$ctxt'(_CallerModuleVar,50,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,50)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,50)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,50)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,50)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,50)))))),null,'_$_$_flora''rule_enabled'(50,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',173,FLORA_WORKSPACE(\\gcl,\\undefeated)(50,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(52,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,153,FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_0,__X0,'_$ctxt'(_CallerModuleVar,52,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,52)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,52)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,52)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,52)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_4_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,52)))))),null,'_$_$_flora''rule_enabled'(52,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',175,FLORA_WORKSPACE(\\gcl,\\undefeated)(52,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(54,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,154,FLORA_THIS_WORKSPACE(d^tblflapply)(p5_0,__X0,'_$ctxt'(_CallerModuleVar,54,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,54)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,54)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,54)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,54)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,54)))))),null,'_$_$_flora''rule_enabled'(54,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',177,FLORA_WORKSPACE(\\gcl,\\undefeated)(54,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(56,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,155,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_0,__X0,'_$ctxt'(_CallerModuleVar,56,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,56)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,56)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,56)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,56)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_1_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,56)))))),null,'_$_$_flora''rule_enabled'(56,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',179,FLORA_WORKSPACE(\\gcl,\\undefeated)(56,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(58,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,156,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_0,__X0,'_$ctxt'(_CallerModuleVar,58,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,58)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,58)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,58)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,58)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_2_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,58)))))),null,'_$_$_flora''rule_enabled'(58,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',181,FLORA_WORKSPACE(\\gcl,\\undefeated)(58,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(60,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,157,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_0,__X0,'_$ctxt'(_CallerModuleVar,60,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,60)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_3_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,60)))))),null,'_$_$_flora''rule_enabled'(60,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',183,FLORA_WORKSPACE(\\gcl,\\undefeated)(60,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(62,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,158,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_0,__X0,'_$ctxt'(_CallerModuleVar,62,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,62)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,62)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,62)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,62)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_4_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,62)))))),null,'_$_$_flora''rule_enabled'(62,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',185,FLORA_WORKSPACE(\\gcl,\\undefeated)(62,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).
?-(fllibinsrulesig(64,'ChainBench3.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,159,FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_0,__X0,'_$ctxt'(_CallerModuleVar,64,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,64)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,64)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,64)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,64)),FLORA_THIS_WORKSPACE(d^tblflapply)(p5_5_5_0,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,64)))))),null,'_$_$_flora''rule_enabled'(64,'ChainBench3.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench3.flr',187,FLORA_WORKSPACE(\\gcl,\\undefeated)(64,dynrule('ChainBench3.flr'),'_$_$_flora''descr_vars',__newvar9,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),__newvar9,[],[]))).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLS2_FILENAME  'ChainBench3.fls2'
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

/************************************************************************
  file: headerinc/flrtrailer_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailer.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpreddef_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrpreddef.flh"

/***********************************************************************/

