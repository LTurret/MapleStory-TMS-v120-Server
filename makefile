# Variables
JAVAC = javac
JAVA = java
JAR = jar
SRC_DIR = src
OUT_DIR = out
DIST_DIR = dist
LIB_DIR = lib/jar/*
JAR_NAME = TMS120.jar
MANIFEST = MANIFEST.MF

# Find all Java source files
SOURCE := $(shell find $(SRC_DIR) -name "*.java")

# Default target
all: $(DIST_DIR)/$(JAR_NAME)

# Create /out and /dist directories if not exist
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(DIST_DIR):
	mkdir -p $(DIST_DIR)

# Compile .java files to the out directory
$(OUT_DIR)/classes.stamp: $(SOURCE) | $(OUT_DIR)
	$(JAVAC) -cp "$(LIB_DIR)" -d $(OUT_DIR) $(SOURCE)
	touch $@

# Package into JAR
$(DIST_DIR)/$(JAR_NAME): $(OUT_DIR)/classes.stamp | $(DIST_DIR)
	$(JAR) cvfm $@ $(MANIFEST) -C $(OUT_DIR) .
	@echo "Build complete: $@"

# Clean generated files
clean:
	rm -rf $(OUT_DIR) $(DIST_DIR)

.PHONY: all clean