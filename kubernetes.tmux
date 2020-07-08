#!/usr/bin/env bash

TMUX_K8S_CONTEXT=`kubectl config current-context 2>/dev/null`
if [[ -z "${TMUX_K8S_CONTEXT}" ]]; then
  TMUX_K8S_CONTEXT="N/A"
fi

TMUX_K8S_CONTEXT_COLOR=${1}
if [[ -z "${TMUX_K8S_CONTEXT_COLOR}" ]]; then
  TMUX_K8S_CONTEXT_COLOR="colour250"
fi

TMUX_K8S_NS=`kubectl config view --minify --output 'jsonpath={..namespace}' 2>/dev/null`
if [[ -z "${TMUX_K8S_NS}" ]]; then
  TMUX_K8S_NS="N/A"
fi

TMUX_K8S_NS_COLOR=${2}
if [[ -z "${TMUX_K8S_NS_COLOR}" ]]; then
  TMUX_K8S_NS_COLOR="colour250"
fi

echo "#[fg=${TMUX_K8S_CONTEXT_COLOR}]${TMUX_K8S_CONTEXT}:#[fg=${TMUX_K8S_NS_COLOR}]${TMUX_K8S_NS}#[default]"


