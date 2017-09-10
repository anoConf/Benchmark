
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

#define FLORA_THIS_FILENAME  'CircleBench2.flr'
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
#define FLORA_FDB_FILENAME  'CircleBench2.fdb'
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
#define FLORA_FLM_FILENAME  'CircleBench2.flm'
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(CircleBench2,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLD_FILENAME  'CircleBench2.fld'
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
#define FLORA_FLS_FILENAME  'CircleBench2.fls'
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
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(np0,a0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(tp,a0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),flibdefeatdelay('CircleBench2.flr',3,FLORA_WORKSPACE(\\gcl,\\undefeated)(4,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(np0,a0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[],[])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p1,a0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p0,a0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),flibdefeatdelay('CircleBench2.flr',5,FLORA_WORKSPACE(\\gcl,\\undefeated)(6,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p1,a0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[],[])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(p0,a0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(p1,a0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),flibdefeatdelay('CircleBench2.flr',7,FLORA_WORKSPACE(\\gcl,\\undefeated)(8,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(d^tblflapply)(p0,a0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar4)),null,[],[])))).
:-(FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),','('_$_$_flora''rule_enabled'(10,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),','(','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p0,a0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np0,a0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),flibdefeatdelay('CircleBench2.flr',9,FLORA_WORKSPACE(\\gcl,\\undefeated)(10,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,__newcontextvar12)),null,[__newvar1,__newvar5],[newvar1,newvar5])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,5,FLORA_THIS_WORKSPACE(d^tblflapply)(np0,a0,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(tp,a0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),null,'_$_$_flora''rule_enabled'(4,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('CircleBench2.flr',3,FLORA_WORKSPACE(\\gcl,\\undefeated)(4,dynrule('CircleBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(6,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,6,FLORA_THIS_WORKSPACE(d^tblflapply)(p1,a0,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p0,a0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),null,'_$_$_flora''rule_enabled'(6,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('CircleBench2.flr',5,FLORA_WORKSPACE(\\gcl,\\undefeated)(6,dynrule('CircleBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(8,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,7,FLORA_THIS_WORKSPACE(d^tblflapply)(p0,a0,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(p1,a0,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),null,'_$_$_flora''rule_enabled'(8,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('CircleBench2.flr',7,FLORA_WORKSPACE(\\gcl,\\undefeated)(8,dynrule('CircleBench2.flr'),'_$_$_flora''descr_vars',__newvar5,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),__newvar5,[],[]))).
?-(fllibinsrulesig(10,'CircleBench2.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,8,FLORA_THIS_WORKSPACE(\\opposes)(__newvar1,__newvar5,'_$ctxt'(_CallerModuleVar,__newcontextvar9,__newcontextvar10)),null,','(fllibuniveqform(__newvar1,FLORA_THIS_WORKSPACE(d^tblflapply)(p0,a0,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),fllibuniveqform(__newvar5,FLORA_THIS_WORKSPACE(d^tblflapply)(np0,a0,'_$ctxt'(__newcontextvar6,__newcontextvar8,__newcontextvar7)))),'_$_$_flora''rule_enabled'(10,'CircleBench2.flr',FLORA_THIS_MODULE_NAME),null,flibdefeatdelay('CircleBench2.flr',9,FLORA_WORKSPACE(\\gcl,\\undefeated)(10,dynrule('CircleBench2.flr'),'_$_$_flora''descr_vars',__newvar13,FLORA_THIS_MODULE_NAME,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),__newvar13,[],[]))).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#define FLORA_FLS2_FILENAME  'CircleBench2.fls2'
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

