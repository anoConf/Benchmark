
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

#define FLORA_THIS_FILENAME  'ChainBench2.flr'
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
  file: syslibinc/flrmetaops_inh.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif


?-(:(flrlibman,flora_load_library(FLLIBMETAOPS))).

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
#define FLORA_FDB_FILENAME  'ChainBench2.fdb'
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
#define FLORA_FLM_FILENAME  'ChainBench2.flm'
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(ChainBench2,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLD_FILENAME  'ChainBench2.fld'
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
#define FLORA_FLS_FILENAME  'ChainBench2.fls'
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
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p0_0,__X0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),flibdefeatdelay('ChainBench2.flr',18,FLORA_WORKSPACE(\\gcl,\\undefeated)(4,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p0_0,__X0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p0_0,__X0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),flibdefeatdelay('ChainBench2.flr',20,FLORA_WORKSPACE(\\gcl,\\undefeated)(6,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p0_0,__X0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np0_0,__X0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),flibdefeatdelay('ChainBench2.flr',22,FLORA_WORKSPACE(\\gcl,\\undefeated)(8,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np0_0,__X0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np0_0,__X0,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),flibdefeatdelay('ChainBench2.flr',24,FLORA_WORKSPACE(\\gcl,\\undefeated)(10,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np0_0,__X0,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_0_1,__X0,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),flibdefeatdelay('ChainBench2.flr',26,FLORA_WORKSPACE(\\gcl,\\undefeated)(12,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1_0_1,__X0,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),flibdefeatdelay('ChainBench2.flr',28,FLORA_WORKSPACE(\\gcl,\\undefeated)(14,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np1_0_1,__X0,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),flibdefeatdelay('ChainBench2.flr',30,FLORA_WORKSPACE(\\gcl,\\undefeated)(16,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np1_0_1,__X0,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np1_0_1,__X0,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),flibdefeatdelay('ChainBench2.flr',32,FLORA_WORKSPACE(\\gcl,\\undefeated)(18,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np1_0_1,__X0,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_0_1,__X0,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','('_$_$_flora''rule_enabled'(20,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),flibdefeatdelay('ChainBench2.flr',34,FLORA_WORKSPACE(\\gcl,\\undefeated)(20,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p2_0_1,__X0,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_flora''rule_enabled'(22,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),flibdefeatdelay('ChainBench2.flr',36,FLORA_WORKSPACE(\\gcl,\\undefeated)(22,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np2_0_1,__X0,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_flora''rule_enabled'(24,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),flibdefeatdelay('ChainBench2.flr',38,FLORA_WORKSPACE(\\gcl,\\undefeated)(24,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np2_0_1,__X0,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np2_0_1,__X0,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_flora''rule_enabled'(26,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),flibdefeatdelay('ChainBench2.flr',40,FLORA_WORKSPACE(\\gcl,\\undefeated)(26,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np2_0_1,__X0,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_0_1,__X0,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_flora''rule_enabled'(28,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),flibdefeatdelay('ChainBench2.flr',42,FLORA_WORKSPACE(\\gcl,\\undefeated)(28,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p3_0_1,__X0,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','('_$_$_flora''rule_enabled'(30,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),flibdefeatdelay('ChainBench2.flr',44,FLORA_WORKSPACE(\\gcl,\\undefeated)(30,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np3_0_1,__X0,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','('_$_$_flora''rule_enabled'(32,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),flibdefeatdelay('ChainBench2.flr',46,FLORA_WORKSPACE(\\gcl,\\undefeated)(32,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np3_0_1,__X0,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np3_0_1,__X0,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','('_$_$_flora''rule_enabled'(34,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),flibdefeatdelay('ChainBench2.flr',48,FLORA_WORKSPACE(\\gcl,\\undefeated)(34,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np3_0_1,__X0,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_0_1,__X0,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','('_$_$_flora''rule_enabled'(36,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36)),flibdefeatdelay('ChainBench2.flr',50,FLORA_WORKSPACE(\\gcl,\\undefeated)(36,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p4_0_1,__X0,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','('_$_$_flora''rule_enabled'(38,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),flibdefeatdelay('ChainBench2.flr',52,FLORA_WORKSPACE(\\gcl,\\undefeated)(38,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np4_0_1,__X0,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','('_$_$_flora''rule_enabled'(40,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),flibdefeatdelay('ChainBench2.flr',54,FLORA_WORKSPACE(\\gcl,\\undefeated)(40,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np4_0_1,__X0,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np4_0_1,__X0,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','('_$_$_flora''rule_enabled'(42,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,42)),flibdefeatdelay('ChainBench2.flr',56,FLORA_WORKSPACE(\\gcl,\\undefeated)(42,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np4_0_1,__X0,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[__X0],['X0'])))).
:-(FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),','('_$_$_flora''rule_enabled'(44,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p0_0,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np0_0,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),flibdefeatdelay('ChainBench2.flr',58,FLORA_WORKSPACE(\\gcl,\\undefeated)(44,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,__newcontextvar12)),null,[__newvar1,__newvar5],[newvar1,newvar5])))).
:-(FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),','('_$_$_flora''rule_enabled'(46,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np1_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),flibdefeatdelay('ChainBench2.flr',59,FLORA_WORKSPACE(\\gcl,\\undefeated)(46,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,__newcontextvar12)),null,[__newvar1,__newvar5],[newvar1,newvar5])))).
:-(FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),','('_$_$_flora''rule_enabled'(48,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np2_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),flibdefeatdelay('ChainBench2.flr',60,FLORA_WORKSPACE(\\gcl,\\undefeated)(48,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,__newcontextvar12)),null,[__newvar1,__newvar5],[newvar1,newvar5])))).
:-(FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),','('_$_$_flora''rule_enabled'(50,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np3_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),flibdefeatdelay('ChainBench2.flr',61,FLORA_WORKSPACE(\\gcl,\\undefeated)(50,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,__newcontextvar12)),null,[__newvar1,__newvar5],[newvar1,newvar5])))).
:-(FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),','('_$_$_flora''rule_enabled'(52,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),','(','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np4_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),flibdefeatdelay('ChainBench2.flr',62,FLORA_WORKSPACE(\\gcl,\\undefeated)(52,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,__newcontextvar12)),null,[__newvar1,__newvar5],[newvar1,newvar5])))).
FLORA_THIS_WORKSPACE(\\overrides)(r1_2_0_1,r3_2_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r1_1_0_1,r3_1_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r2_4_0_1,r4_4_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r1_3_0_1,r3_3_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r2_0_0,r4_0_0,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r2_2_0_1,r4_2_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r1_4_0_1,r3_4_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r1_0_0,r3_0_0,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r2_1_0_1,r4_1_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).
FLORA_THIS_WORKSPACE(\\overrides)(r2_3_0_1,r4_3_0_1,'_$ctxt'(_CallerModuleVar,__newcontextvar1,__newcontextvar2)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,20,FLORA_THIS_WORKSPACE(d^tblflapply)(p0_0,__X0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),null,'_$_$_flora''rule_enabled'(4,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',18,FLORA_WORKSPACE(\\gcl,\\undefeated)(4,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(6,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,21,FLORA_THIS_WORKSPACE(d^tblflapply)(p0_0,__X0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),null,'_$_$_flora''rule_enabled'(6,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',20,FLORA_WORKSPACE(\\gcl,\\undefeated)(6,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(8,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,22,FLORA_THIS_WORKSPACE(d^tblflapply)(np0_0,__X0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),null,'_$_$_flora''rule_enabled'(8,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',22,FLORA_WORKSPACE(\\gcl,\\undefeated)(8,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(10,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,23,FLORA_THIS_WORKSPACE(d^tblflapply)(np0_0,__X0,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),null,'_$_$_flora''rule_enabled'(10,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',24,FLORA_WORKSPACE(\\gcl,\\undefeated)(10,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(12,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,24,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p1_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),null,'_$_$_flora''rule_enabled'(12,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',26,FLORA_WORKSPACE(\\gcl,\\undefeated)(12,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(14,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,25,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p2_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),null,'_$_$_flora''rule_enabled'(14,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',28,FLORA_WORKSPACE(\\gcl,\\undefeated)(14,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(16,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,26,FLORA_THIS_WORKSPACE(d^tblflapply)(np1_0_1,__X0,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p3_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),null,'_$_$_flora''rule_enabled'(16,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',30,FLORA_WORKSPACE(\\gcl,\\undefeated)(16,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(18,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,27,FLORA_THIS_WORKSPACE(d^tblflapply)(np1_0_1,__X0,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p4_1_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),null,'_$_$_flora''rule_enabled'(18,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',32,FLORA_WORKSPACE(\\gcl,\\undefeated)(18,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(20,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,28,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p1_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),null,'_$_$_flora''rule_enabled'(20,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',34,FLORA_WORKSPACE(\\gcl,\\undefeated)(20,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(22,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,29,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p2_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),null,'_$_$_flora''rule_enabled'(22,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',36,FLORA_WORKSPACE(\\gcl,\\undefeated)(22,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(24,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,30,FLORA_THIS_WORKSPACE(d^tblflapply)(np2_0_1,__X0,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p3_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),null,'_$_$_flora''rule_enabled'(24,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',38,FLORA_WORKSPACE(\\gcl,\\undefeated)(24,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(26,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,31,FLORA_THIS_WORKSPACE(d^tblflapply)(np2_0_1,__X0,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p4_2_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),null,'_$_$_flora''rule_enabled'(26,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',40,FLORA_WORKSPACE(\\gcl,\\undefeated)(26,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(28,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,32,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p1_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),null,'_$_$_flora''rule_enabled'(28,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',42,FLORA_WORKSPACE(\\gcl,\\undefeated)(28,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(30,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,33,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p2_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),null,'_$_$_flora''rule_enabled'(30,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',44,FLORA_WORKSPACE(\\gcl,\\undefeated)(30,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(32,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,34,FLORA_THIS_WORKSPACE(d^tblflapply)(np3_0_1,__X0,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p3_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),null,'_$_$_flora''rule_enabled'(32,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',46,FLORA_WORKSPACE(\\gcl,\\undefeated)(32,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(34,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,35,FLORA_THIS_WORKSPACE(d^tblflapply)(np3_0_1,__X0,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p4_3_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),null,'_$_$_flora''rule_enabled'(34,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',48,FLORA_WORKSPACE(\\gcl,\\undefeated)(34,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(36,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,36,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p1_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36)),null,'_$_$_flora''rule_enabled'(36,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',50,FLORA_WORKSPACE(\\gcl,\\undefeated)(36,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(38,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,37,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p2_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),null,'_$_$_flora''rule_enabled'(38,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',52,FLORA_WORKSPACE(\\gcl,\\undefeated)(38,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(40,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,38,FLORA_THIS_WORKSPACE(d^tblflapply)(np4_0_1,__X0,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p3_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),null,'_$_$_flora''rule_enabled'(40,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',54,FLORA_WORKSPACE(\\gcl,\\undefeated)(40,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(42,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,39,FLORA_THIS_WORKSPACE(d^tblflapply)(np4_0_1,__X0,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p4_4_0_2,__X0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,42)),null,'_$_$_flora''rule_enabled'(42,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',56,FLORA_WORKSPACE(\\gcl,\\undefeated)(42,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(44,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,40,FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),null,','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p0_0,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np0_0,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),'_$_$_flora''rule_enabled'(44,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',58,FLORA_WORKSPACE(\\gcl,\\undefeated)(44,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar13,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),__newvar13,[],[]))).
?-(fllibinsrulesig(46,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,41,FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),null,','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p1_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np1_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),'_$_$_flora''rule_enabled'(46,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',59,FLORA_WORKSPACE(\\gcl,\\undefeated)(46,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar13,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),__newvar13,[],[]))).
?-(fllibinsrulesig(48,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,42,FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),null,','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p2_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np2_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),'_$_$_flora''rule_enabled'(48,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',60,FLORA_WORKSPACE(\\gcl,\\undefeated)(48,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar13,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),__newvar13,[],[]))).
?-(fllibinsrulesig(50,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,43,FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),null,','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p3_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np3_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),'_$_$_flora''rule_enabled'(50,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',61,FLORA_WORKSPACE(\\gcl,\\undefeated)(50,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar13,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),__newvar13,[],[]))).
?-(fllibinsrulesig(52,'ChainBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,44,FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),null,','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p4_0_1,__X0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np4_0_1,__X0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),'_$_$_flora''rule_enabled'(52,'ChainBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('ChainBench2.flr',62,FLORA_WORKSPACE(\\gcl,\\undefeated)(52,dynrule('ChainBench2.flr'),'_$_$_flora''descr_vars',__newvar13,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),__newvar13,[],[]))).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLS2_FILENAME  'ChainBench2.fls2'
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

