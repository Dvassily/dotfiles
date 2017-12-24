;;; Compiled snippets and support files for `java-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
		     '(("tos" "public String toString() {\n    return $0;\n}" "toString" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/tostring.yasnippet" nil nil)
		       ("thread" "Thread t = new Thread($1) {\n    public void run() {\n        $0\n    }\n}.start();" "thread" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/thread.yasnippet" nil nil)
		       ("sync" "synchronized (${1:this}) {\n    $0\n}" "synchronized" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/synchronized.yasnippet" nil nil)
		       ("sleep" "try {\n    Thread.sleep(${1:1000});\n} catch (InterruptedException ignore) { }\n$0" "Thread.sleep()" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/sleep.yasnippet" nil nil)
		       ("set" "Set<${1:String}> ${2:set} = new HashSet<$1>();$0" "Set" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/set.yasnippet" nil nil)
		       ("ret" "return $1;$0" "return" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/return.yasnippet" nil nil)
		       ("p" "System.out.println($1);$0" "System.out.println" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/println.yasnippet" nil nil)
		       ("pa" "package ${1:`(mapconcat 'identity (split-string (replace-regexp-in-string \".*src\\\\(/\\\\(main\\\\|test\\\\)\\\\)?\\\\(/java\\\\)?\" \"\" default-directory) \"/\" t) \".\")`};\n$0\n" "package" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/package.yasnippet" nil nil)
		       ("new" "${1:Object} ${2:name} = new $1($3);$0" "Declare and instantiate" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/new.yasnippet" nil nil)
		       ("map" "Map<${1:String}, ${2:Object}> ${3:map} = new HashMap<$1, $2>();$0" "Map" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/map.yasnippet" nil nil)
		       ("main" "public static void main(String[] args) {\n    $0\n}" "public static void main (String[] args) { ... }" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/main.yasnippet" nil nil)
		       ("maine" "public static void main(String[] args) throws Exception {\n    $0\n}" "public static void main (String[] args) throws Exception { ... }" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/main-exception.yasnippet" nil nil)
		       ("list" "List<${1:String}> ${2:list} = new ArrayList<$1>();$0" "List" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/list.yasnippet" nil nil)
		       ("im" "import $0" "import" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/import.yasnippet" nil nil)
		       ("h" "public class ${1:`(file-name-sans-extension (buffer-name))`} {\n    public static void main(String[] args) {\n        System.out.println(\"Hello world!\");\n    }\n}\n" "Hello World" nil nil nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/helloworld.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
		     '(("prop" "private ${1:String} ${2:name};$0\n\npublic $1 get${2:$(upcase-initials yas-text)}() {\n    return $2;\n}\n\npublic void set${2:$(upcase-initials yas-text)}($1 $2) {\n    this.$2 = $2;\n}\n" "property" nil
			("classes")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/classes/property.yasnippet" nil nil)
		       ("int" "public interface ${1:`(file-name-sans-extension (buffer-name))`}$2 {\n    $0\n}\n" "interface" nil
			("classes")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/classes/interface.java" nil nil)
		       ("imp" "implements $0" "implements" nil
			("classes")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/classes/implements.yasnippet" nil nil)
		       ("ext" "extends $0" "extends" nil
			("classes")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/classes/extends.yasnippet" nil nil)
		       ("con" "public ${1:`(file-name-sans-extension (buffer-name))`}($2) {\n    $0\n}" "constructor" nil
			("classes")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/classes/constructor.yasnippet" nil nil)
		       ("cla" "public class ${1:`(file-name-sans-extension (buffer-name))`}$2 {\n    $0\n}" "class" nil
			("classes")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/classes/class.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
		     '(("while" "while (${1:condition}) {\n    $0\n}" "while (...) { ... }" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/while.yasnippet" nil nil)
		       ("if" "if (${1:condition}) {\n    $0\n}\n" "if (...) { ... }" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/if.yasnippet" nil nil)
		       ("ife" "if (${1:condition}) {\n    $2\n} else {\n    $3\n}\n" "if, else" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/if-else.yasnippet" nil nil)
		       ("ifee" "if (${1:condition}) {\n    $2\n} else if (${3:condition}) {\n    $4\n} else {\n    $5\n}\n" "if, else if, else" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/if-else-if-else.yasnippet" nil nil)
		       ("foreach" "for (${1:String} ${2:name} : ${4:iterable}) {\n    $0\n}" "for (... : ...) { ... }" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/foreach.yasnippet" nil nil)
		       ("for" "for (int ${1:i} = 0; $1 < $2; $1++) {\n    $0\n}" "for (...) { ... }" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/for.yasnippet" nil nil)
		       ("forit" "for (Iterator ${1:it} = $2.iterator(); $1.hasNext(); ) {\n    ${3:String} ${4:name} = ($3)$1.next();\n    $0\n}" "for (Iterator ...) { ... }" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/for-iterator.yasnippet" nil nil)
		       ("do" "do {\n    $0\n} while (${1:condition});" "do { ... } while (...)" nil
			("controlflow")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/controlflow/do-while.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
		     '(("tryf" "try {\n    $0\n} finally {\n}" "try, finally" nil
			("exceptions")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/exceptions/try-finally.yasnippet" nil nil)
		       ("tryc" "try {\n    $0\n} catch (${1:Exception} ${2:ex}) {\n}" "try, catch" nil
			("exceptions")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/exceptions/try-catch.yasnippet" nil nil)
		       ("trycf" "try {\n    $0\n} catch (${1:Exception} ${2:ex}) {\n} finally {\n}" "try, catch, finally" nil
			("exceptions")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/exceptions/try-catch-finally.yasnippet" nil nil)
		       ("thr" "throws $0" "throws" nil
			("exceptions")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/exceptions/throws.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
		     '(("s" "static $0" "static" nil
			("modifiers")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/modifiers/static.yasnippet" nil nil)
		       ("pub" "public $0" "public" nil
			("modifiers")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/modifiers/public.yasnippet" nil nil)
		       ("pro" "protected $0" "protected" nil
			("modifiers")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/modifiers/protected.yasnippet" nil nil)
		       ("pri" "private $0" "private" nil
			("modifiers")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/modifiers/private.yasnippet" nil nil)
		       ("fin" "final $0" "final" nil
			("modifiers")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/modifiers/final.yasnippet" nil nil)
		       ("abs" "abstract $0" "abstract" nil
			("modifiers")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/modifiers/abstract.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'java-mode
		     '(("v" "void $0" "void" nil
			("types")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/types/void.yasnippet" nil nil)
		       ("S" "String $0" "String" nil
			("types")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/types/string.yasnippet" nil nil)
		       ("O" "Object $0" "Object" nil
			("types")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/types/object.yasnippet" nil nil)
		       ("boo" "boolean $0" "boolean" nil
			("types")
			nil "/home/baz/.emacs.d/elpa/java-snippets/snippets/java-mode/types/boolean.yasnippet" nil nil)))


;;; Do not edit! File generated at Fri Dec 30 18:55:17 2016
