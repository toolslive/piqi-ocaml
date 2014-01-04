include ../Makefile.config
include $(PIQI_ROOT)/make/Makefile.ocaml


PIQI ?= piqi


RESULT = piqic-ocaml


SOURCES = \
	piqi_piqi.ml \
	piqic_common.ml \
	\
	piqic_ocaml_types.ml \
	piqic_ocaml_out.ml \
	piqic_ocaml_in.ml \
	piqic_ocaml_defaults.ml \
	piqic_ocaml_ext.ml \
	piqic_ocaml.ml \


PACKS = piqi.lib


PRE_TARGETS =


all: nc

debug: dc top


# recompile piqi self-spec into piqi_piqi.ml
PIQIC = ./$(RESULT)
PIQIC_FLAGS = -I $(PIQI_ROOT) --embed-piqi --pp #--trace

reboot:
	$(PIQIC) $(PIQIC_FLAGS) piqi.piqi


include $(OCAMLMAKEFILE)