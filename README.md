## Synopsis

Defeasible benchmark that can be used to classify defeasible reasoning tools based on their semantics (ambiguity propagating vs ambiguity blocking), expressiveness (existential rules, negation, cyclic rules, priority relation) and performance.

## How to Run?

It is recommended to run the benchmark using command line, it is also possible to run it directly. See [BenchLaucher.java](https://github.com/anoConf/Benchmark/blob/master/src/main/java/anon/defeasible/benchmark/BenchLauncher.java). 
Please note that for blind review reasons, a necessary library has been omitted, and as such the benchmark cannot be run for now. However, this library is going to be made public after the review process.
If you are in a hurry, please submit an issue in this github page. 

## Test Theories

* **Ambiguity:** Tests if the tool has an ambiguity blocking or an ambiguity propagating behavior.
* **Team Defeat (Direct Reinstatement):** Tests if the tool allows for team defeat or not.
* **Floating Conclusions:** Tests if the tool accepts floating conclusions.
* **Circular Reasoning:** Tests if the tool considers circular reasoning.

![Semantics](resources/semantics.png)

* **Existential Test:** Test if the tool understands existential rules.
* **Chain FES:** Test performance when faced with FES rules.
* **Chain FUS:** Test performance with FUS rules.
* **Chain GBTS:** Test performance with GBTS rules.
* **Cyclic GRD:** Test performance when the GRD is cyclic.
* **Cyclic Conflict:** Test performance when faced with cyclic conflicts.
* **Rule Application Block:** Test performance when defeaters or negated label on rules are used to block their application.
* **Priority:** Test performance w.r.t. a priority relation.
* **Queries:** Test performance when faced with non ground queries.

![Expressivness](resources/expressivness.png)

* **Chain Theory:** Test performance with long chains of rules.
* **Tree Theory:** Test performance w.r.t. a large number of linked arguments.
* **Directed Acyclic Graph Theory:** Test performance when faced with many arguments for the same atom.

## How To Test Other Tools?

Implement the interface [AbstractTool](https://github.com/anoConf/Benchmark/blob/master/src/main/java/anon/defeasible/benchmark/tools/AbstractTool.java). Example: [DeLPTool](https://github.com/anoConf/Benchmark/blob/master/src/main/java/anon/defeasible/benchmark/tools/DeLPTool.java).


## Contributors

This benchmark is currently under review, the list of contributors (and who to contact in case of problem) will be disclosed afterwards.

## License

his project is licensed under the MIT License.