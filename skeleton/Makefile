
SOURCES = $(wildcard */*.java)
CLASSES = $(SOURCES:.java=.class) parser/Lexer.class parser/sym.class parser/Parser.class

default: classes submission

classes:
	cd parser && $(JFLEX_DIR)/bin/jflex --nobak Scanner.jflex
	cd parser && java -jar $(CUP_DIR)/java-cup-11b.jar -interface -parser Parser Parser.cup
	javac -cp $(CUP_DIR)/java-cup-11b.jar:. */*.java

submission:
	rm -f myproject.tgz
	tar czf myproject.tgz quandary Makefile */*.java parser/Scanner.jflex parser/Parser.cup

clean:
	rm -f */*.class parser/Lexer.java parser/sym.java parser/Parser.java

#parser/Lexer.java: parser/Scanner.jflex
#	cd parser && $(JFLEX_DIR)/bin/jflex --nobak Scanner.jflex

#parser/Parser.java: parser/Parser.cup
#	cd parser && java -jar $(CUP_DIR)/java-cup-11b.jar -interface -parser Parser Parser.cup

#%.class: %.java
#	javac -cp $(CUP_DIR)/java-cup-11b.jar:. $<
